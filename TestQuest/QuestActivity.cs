
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
using Square.Picasso;
using System.Net;

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
                if (quest.media != "")
                {
                    //Picasso.Get().Load(quest.media).Into(imgMedia);
                    Picasso.Get()
                        .Load(quest.media)
                        .Resize(600, 400)
                        .CenterCrop()
                        .Error(Resource.Drawable.arrows)
                        .Into(imgMedia);
                    //Download image fom Web
                    //WebClient wc= new WebClient();
                    //var imagesBytes=wc.DownloadData(quest.media);
                    //var bitmap = Android.Graphics.BitmapFactory.DecodeByteArray(imagesBytes, 0, imagesBytes.Length);
                    //imgMedia.SetImageBitmap(bitmap);
                } else
                {
                    Picasso.Get()
                        .Load(Resource.Drawable.arrows)
                        .Resize(300, 100)
                        .CenterCrop()
                        .Into(imgMedia);
                }
                actualQuestion = quest;
                //radAtb1.Click += AnswerChoise;
                //radAtb2.Click += AnswerChoise;
                //radAtb3.Click += AnswerChoise;
                //radAtb4.Click += AnswerChoise;

                await btnGiveAnsver.WhenClicked();
                btnGiveAnsver.Click += AnswerApproved;
                radAtb1.Checked = false;
                radAtb2.Checked = false;
                radAtb3.Checked = false;
                radAtb4.Checked = false;
                //imgMedia.SetImageResource(Resource.Drawable.arrows);
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

        // Tiek izmantots aplikācijas testēšanai, kamēr nav pieslēgta datu bāze.
        void getTestData()
        {

            for (int i = 1; i < 11; i++)
            {
                string key = i.ToString();
                Question question = new Question();
                question.nr = key;
                question.jaut = key + ". jautåjuma teksts";
                question.media = "";
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
            questionList[2].media = "https://ucd661da67193945dffe5a874722.previews.dropboxusercontent.com/p/thumb/AB5JkI0o3vrHZ1nvel5HZPcygGfoVGOnrxoyxBC-StDTWe_zhay1fXrGOtIgIu6uksus2mdk5sX5KtWDcw6c5iKp5sN_KIPoxw8AX9FPitcO5Ms_nA-4H7_T-3mGA_CDK85epJXRGFSeI2fiNCJqrndiJJ9F7AcnNDEbqFhWYzSGuWQI95V0V6jGN7QiGUMa8vR5riqyyK4MhR2_ZgYnDmGgzDJsjt71jSpJsUgDoF1U2_7RQDEoImmr8lcxaHY-MlwETMyJp6vmEmhoIMwU1N07PHAuNiTPdbxb6-DFf2KKWfAWnBFK2u4FOcdyyxg0A9V35adRDxQJfPLyve0RVSSYhMacqEk-uq_satQ5op9eYv_fYzNGijVPS0wpRDbE0zCnr-pBcqVwEgdBI2lD_-3u7M4FD7U2d6r8J0784R5LZA/p.png";
            questionList[2].atb1text = "Daugavpils"; questionList[2].atb1right = false;
            questionList[2].atb2text = "Ventspils"; questionList[2].atb2right = false;
            questionList[2].atb3text = "Ogre"; questionList[2].atb3right = true;
            questionList[2].atb4text = "Jelgava"; questionList[2].atb4right = false;

            questionList[3].jaut = "Pilsēta izveidojusies pie 1953. gadā dibinātās kūdras fabrikas, 1954. gadā tā ieguva strādnieku ciemata tiesības, 1961. gadā kļuva par pilsētciematu, bet 1991. gadā pārveidota par pilsētu ar lauku teritoriju. Par kuru pilsētu šis stāsts?";
            questionList[3].media = "";
            questionList[3].atb1text = "Seda"; questionList[3].atb1right = true;
            questionList[3].atb2text = "Baloži"; questionList[3].atb2right = false;
            questionList[3].atb3text = "Vangaži"; questionList[3].atb3right = false;
            questionList[3].atb4text = "Baldone"; questionList[3].atb4right = false;

            questionList[4].jaut = "Pēdējā administratīvi teritoriālā reforma stājusies spēkā 2021. gada 1. jūlijā. Kura no šīm neietilpst septiņu valstspilsētu skaitā?";
            questionList[4].media = "";
            questionList[4].atb1text = "Jēkabpils"; questionList[4].atb1right = false;
            questionList[4].atb2text = "Ogre"; questionList[4].atb2right = false;
            questionList[4].atb3text = "Rēzekne"; questionList[4].atb3right = false;
            questionList[4].atb4text = "Bauska"; questionList[4].atb4right = true;

            questionList[5].jaut = "Piemineklis Vienoti Latvijai atrodas Rēzeknē. Kā tautā sauc šo pieminekli?";
            questionList[5].media = "https://skolenuekskursijas.lv/wp-content/uploads/2018/11/R-zekne-latgales-M-ra2.jpg";
            questionList[5].atb1text = "Latgales Līze"; questionList[5].atb1right = false;
            questionList[5].atb2text = "Latgales Māra"; questionList[5].atb2right = true;
            questionList[5].atb3text = "Latgales Milda"; questionList[5].atb3right = false;
            questionList[5].atb4text = "Latgales Brīvības piemineklis"; questionList[5].atb4right = false;

            questionList[6].jaut = "Līdz 1990. gadam šo pilsētu sauca par Stučku. Kā to sauc tagad?";
            questionList[6].media = "";
            questionList[6].atb1text = "Pļaviņas"; questionList[6].atb1right = false;
            questionList[6].atb2text = "Jaunjelgava"; questionList[6].atb2right = false;
            questionList[6].atb3text = "Jēkabpils"; questionList[6].atb3right = false;
            questionList[6].atb4text = "Aizkraukle"; questionList[6].atb4right = true;

            questionList[7].jaut = "Kura ir Latvijas pilsēta atrodas visaugstāk - aptuveni 200 m virs jūras līmeņa?";
            questionList[7].media = "";
            questionList[7].atb1text = "Alūksne"; questionList[7].atb1right = true;
            questionList[7].atb2text = "Rūjiena"; questionList[7].atb2right = false;
            questionList[7].atb3text = "Ape"; questionList[7].atb3right = false;
            questionList[7].atb4text = "Ainaži"; questionList[7].atb4right = false;

            questionList[8].jaut = "Kura pilsēta atrodas padziļinājuma vietā, kas veidojies meteorīta trieciena rezultātā? Šis krāteris ir viens no lelākajiem meteorītu krāteriem Eiropā.";
            questionList[8].media = "";
            questionList[8].atb1text = "Talsi"; questionList[8].atb1right = false;
            questionList[8].atb2text = "Dobele"; questionList[8].atb2right = true;
            questionList[8].atb3text = "Sabile"; questionList[8].atb3right = false;
            questionList[8].atb4text = "Grobiņa"; questionList[8].atb4right = false;

            questionList[9].jaut = "Kā 1961. gadā Arvīds Pelše ierosināja pārsaukt Rīgu?";
            questionList[9].media = "";
            questionList[9].atb1text = "Padlatvija"; questionList[9].atb1right = false;
            questionList[9].atb2text = "Kirhenšteina"; questionList[9].atb2right = false;
            questionList[9].atb3text = "Sovetska"; questionList[9].atb3right = false;
            questionList[9].atb4text = "Gagarina"; questionList[9].atb4right = true;

        }


    }

}

