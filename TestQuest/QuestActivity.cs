
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
using Result = TestQuest.DataModels.Result;
using AndroidX.Core.App;
using Newtonsoft.Json;

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

        public Result result;
       


        protected override async void OnCreate (Bundle savedInstanceState)
		{
			base.OnCreate (savedInstanceState);
            SetContentView(Resource.Layout.questionLayout);
			int qCount = Intent.GetIntExtra("Qcount", 10);
            string nickname = Intent.GetStringExtra("Nickname");
            CreateResult();
            result.nick = nickname;
            result.key = Intent.GetStringExtra("Start");

            // FixMe Te vajadzētu būt jautājumu datu bāzes inicializācijai
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
                string teststring = nickname + " have list of " + questionList.Count.ToString() + " questions; Max points " + counter.ToString() + "; Earned points " + rightAnswers.ToString() + "; Question " + i.ToString();
                txtNickname.Text = teststring; // vērtību kontrole aplikācijas testēšanas laikā
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

                // Quests beidzies - apkopojam rezultātus
                // ToDo - savākt statistiku par katra jautājuma rezultātiem
                if (i == qCount - 1)
                {
                    result.perc = (double)rightAnswers / (double)qCount;
                    result.size = qCount;
                    string json = JsonConvert.SerializeObject(result, Formatting.Indented);
                    Intent intent = new Intent(this, typeof(ResultActivity));
                    intent.PutExtra("Result", json);
                    StartActivity(intent);
                    Finish();
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

        // pieņem atbildi, kad nospiests Button
        private void AnswerApproved(object sender, EventArgs e)
        {
            var checkedRadioButton = FindViewById<RadioButton>(radioGroup1.CheckedRadioButtonId);
                counter+=1;
            // ERROR rezultātu skaitītājs rightAnswers darbojas nepareizi :(
                if (radioGroup1.CheckedRadioButtonId == -1)
                {  //nekas nav ieklikšķināts - nepareiza atbilde
                }
                else
                {// Kura izvēle ir ieklikšķināta
                // FixMe Pareizo atbižu uzskaite rightAnsver un counteris counter darbojas nepareizi.
                if ((checkedRadioButton.Text == actualQuestion.atb1text) && actualQuestion.atb1right) { rightAnswers += 1; };
                if ((checkedRadioButton.Text == actualQuestion.atb2text) && actualQuestion.atb2right) { rightAnswers += 1; };
                if ((checkedRadioButton.Text == actualQuestion.atb3text) && actualQuestion.atb3right) { rightAnswers += 1; };
                if ((checkedRadioButton.Text == actualQuestion.atb4text) && actualQuestion.atb4right) { rightAnswers += 1; };

                // Var arī šādi, vienalga strādā nepareizi.

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
            //Toast.MakeText(this, rightAnswers.ToString(), ToastLength.Short).Show();
        }

        // Apstrādā Radio butonus - netiek izmantots
        //private void AnswerChoise(object sender, EventArgs e)
        //{
        //    RadioButton rb = (RadioButton)sender;
        //    Toast.MakeText(this, rb.Text, ToastLength.Short).Show();
        //}

        private void CreateResult()
        {
            result.key = "";
            result.login = "";
            result.nick = "Anonymous";
            result.size = 10;
            result.q1 = false;
            result.q2 = false;
            result.q3 = false;
            result.q4 = false;
            result.q5 = false;
            result.q6 = false;
            result.q7 = false;
            result.q8 = false;
            result.q9 = false;
            result.q10 = false;
            result.perc = 0;
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

            // Defaultie jautåjumi - var tikt izmantoti, kad nav interneta

            questionList[0].jaut = "Kura ir Latvijas mazākā pilsēta pēc iedzīvotāju skaita 2022. gadā?";
            questionList[0].atb1text = "Ape"; questionList[0].atb1right = false;
            questionList[0].atb2text = "Piltene"; questionList[0].atb2right = false;
            questionList[0].atb3text = "Subate"; questionList[0].atb3right = false;
            questionList[0].atb4text = "Durbe"; questionList[0].atb4right = true;

            questionList[1].jaut = "Pašlaik Latvijā 81 pilsēta. Daļa ieguvusi pilsētas tiesības pirmās brīvvalsts laikā, daļa – padomju okupācijas laikā, dažas ir pavisam jaunas. Jautājums - cik Latvijas pilsētas savas pilsētu tiesības ieguvušas līdz 19. g.s. sākumam?";
            questionList[1].atb1text = "10"; questionList[1].atb1right = false;
            questionList[1].atb2text = "20"; questionList[1].atb2right = true;
            questionList[1].atb3text = "30"; questionList[1].atb3right = false;
            questionList[1].atb4text = "40"; questionList[1].atb4right = false;

            questionList[2].jaut = "Kurai Latvijas pisētai atbilst šis attēls?";
            questionList[2].media = "https://1drv.ms/i/s!AhRr-mQa5CNhhmcprrdSlB1PbWa-?e=cDMdjJ";
            questionList[2].atb1text = "Daugavpils"; questionList[2].atb1right = false;
            questionList[2].atb2text = "Ventspils"; questionList[2].atb2right = false;
            questionList[2].atb3text = "Ogre"; questionList[2].atb3right = true;
            questionList[2].atb4text = "Jelgava"; questionList[2].atb4right = false;


        }


    }

}

