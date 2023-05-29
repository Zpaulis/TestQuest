
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
//using Firebase.Database;
using TestQuest.EventListeners;
using TestQuest.DataModels;
using static TestQuest.EventListeners.Utils;
using TestQuest.Helpers;
//using Firebase.Firestore;
using System.Threading.Tasks;
using System.Threading;
using Google.Cloud.Firestore;
using System.IO;
using Xamarin.Essentials;



namespace TestQuest
{
	[Activity (Label = "QuestActivity")]			
	public class QuestActivity : Activity
	{
		// Šis būs jautåjumu un atbilžu saraksts
        List<Question> questionList = new List<Question>();
        FirestoreDb database;
        //QuestListeners questListener;
        Button btnGiveAnsver;
        ImageView imgMedia;
        TextView txtJaut, txtNickname;
        RadioGroup radioGroup1;
        RadioButton radAtb1, radAtb2, radAtb3, radAtb4;
        public int counter = 0;
        public Question actualQuestion;
        public int rightAnswers = 0;

        protected override async void OnCreate (Bundle savedInstanceState)
		{
			base.OnCreate (savedInstanceState);
            SetContentView(Resource.Layout.questionLayout);
			int qCount = Intent.GetIntExtra("Qcount", 10);

            // Te vajadzētu būt jautājumu datu bāzes inicializācijai
            //string path = AppDomain.CurrentDomain.BaseDirectory + @"study.json";
            //string path = Path.Combine(FileSystem.AppDataDirectory, "study.json");
            //System.Environment.SetEnvironmentVariable("GOOGLE_APPLICATION_CREDENTIALS", path);
            //database = FirestoreDb.Create("study-exercise");
            //RetriveData();
            //Toast.MakeText(this, $"ttt", ToastLength.Short).Show();
            getTestData();
            // Atstāj tikai nepieciešamo jautājumu skaitu
            var rnd = new Random();
            while (questionList.Count > qCount)
            { 
                questionList.RemoveAt(rnd.Next(questionList.Count));
            }


            // Atrod sasaistes ar questionLayout objektiem
            txtJaut = FindViewById<TextView>(Resource.Id.txtQuestion);
            txtNickname = FindViewById<TextView>(Resource.Id.txtNickname);
            imgMedia = FindViewById<ImageView>(Resource.Id.imgOpt);
            radioGroup1 = FindViewById<RadioGroup>(Resource.Id.radioGroup1);
            radAtb1 = FindViewById<RadioButton>(Resource.Id.radAnswer1);
            radAtb2 = FindViewById<RadioButton>(Resource.Id.radAnswer2);
            radAtb3 = FindViewById<RadioButton>(Resource.Id.radAnswer3);
            radAtb4 = FindViewById<RadioButton>(Resource.Id.radAnswer4);
            btnGiveAnsver = FindViewById<Button>(Resource.Id.btnGiveAnswer);

            for (int i = 0; i < qCount; i++ )
            {
                string teststring = "List of " + questionList.Count.ToString() + "; " + counter.ToString() + "; " + rightAnswers.ToString() + "; " + i.ToString();
                txtNickname.Text = teststring; // vērtību kontrole testa laikā
                var quest = questionList[i];

                txtJaut.Text = quest.jaut;
                radAtb1.Text = quest.atb1text;
                radAtb2.Text = quest.atb2text;
                radAtb3.Text = quest.atb3text;
                radAtb4.Text = quest.atb4text;
                radAtb1.Checked = false;
                radAtb2.Checked = false;
                radAtb3.Checked = false;
                radAtb4.Checked = false;
                actualQuestion = quest;
                //radAtb1.Click += AnswerChoise;
                //radAtb2.Click += AnswerChoise;
                //radAtb3.Click += AnswerChoise;
                //radAtb4.Click += AnswerChoise;

                await btnGiveAnsver.WhenClicked();
                btnGiveAnsver.Click += AnswerApproved;

                if (counter == qCount)
                {
                    Intent intent = new Intent(this, typeof(ResultActivity));
                    intent.PutExtra("RightAnsvers", rightAnswers);
                    StartActivity(intent);
                }




            }

        }

        async void RetriveData()
        {
            //    questListener = new QuestListeners();
            //    //questListener.Create();
            //    questListener.FetchData();
            //    questListener.QuestionsRetrived += (object sender, QuestListeners.QuestionDataEventArgs e) =>
            //{
            //    questionList = e.Questions;
            //};
            CollectionReference questionRef = database.Collection("questionnaire");
            QuerySnapshot snap = await questionRef.GetSnapshotAsync();
            foreach (DocumentSnapshot docsnap in snap)
            {
                Question question = docsnap.ConvertTo<Question>();

                if (docsnap.Exists)
                {
                    questionList.Add(question);
                }
            }





        }

        // Tiek izmantots, kamēr nav pieslēgta datu bāze.
        void getTestData()
        {

            for (int i = 1; i < 11; i++)
            {
                string key = i.ToString();
                Question question = new Question();
                question.nr = key;
                question.jaut = key + ". jautåjuma teksts";
                question.media = "http:// adrese";
                question.atb1text = key + ". jautåjuma 1. atbildes teksts";
                question.atb2text = key + ". jautåjuma 2. atbildes teksts";
                question.atb3text = key + ". jautåjuma 3. atbildes teksts";
                question.atb4text = key + ". jautåjuma 4. atbildes teksts";
                question.atb1right = false;
                question.atb2right = false;
                question.atb3right = false;
                question.atb4right = true;
                questionList.Add(question);
            }

        }
        // pieņem atbildi, kad nospiests Button
        private void AnswerApproved(object sender, EventArgs e)
        {
            var checkedRadioButton = FindViewById<RadioButton>(radioGroup1.CheckedRadioButtonId);
            
                counter+=1;

                if (radioGroup1.CheckedRadioButtonId == -1)
                {
                    //nekas nav ieklikšķināts - nepareiza atbilde
                }
                else
                {// Kura izvēle ir ieklikšķināta

                if ((checkedRadioButton.Text == actualQuestion.atb1text) && actualQuestion.atb1right) { rightAnswers += 1; };
                if ((checkedRadioButton.Text == actualQuestion.atb2text) && actualQuestion.atb2right) { rightAnswers += 1; };
                if ((checkedRadioButton.Text == actualQuestion.atb3text) && actualQuestion.atb3right) { rightAnswers += 1; };
                if ((checkedRadioButton.Text == actualQuestion.atb4text) && actualQuestion.atb4right) { rightAnswers += 1; };



                //    if (radAtb1.Checked && actualQuestion.atb1right) { rightAnswers+=1; }
                //    else
                //    {
                //        if (radAtb2.Checked && actualQuestion.atb2right) { rightAnswers+=1; }
                //        else
                //        {
                //            if (radAtb3.Checked && actualQuestion.atb3right) { rightAnswers+=1; }
                //            else
                //            {
                //                if (radAtb4.Checked && actualQuestion.atb4right) { rightAnswers+=1; }
                //            }
                //        }
                //    }
            }

            Toast.MakeText(this, rightAnswers.ToString(), ToastLength.Short).Show();

            
        }

        // Apstrādā Radio butonus - netiek izmantots
        private void AnswerChoise(object sender, EventArgs e)
        {
            RadioButton rb = (RadioButton)sender;
            Toast.MakeText(this, rb.Text, ToastLength.Short).Show();
        }


    }

}

