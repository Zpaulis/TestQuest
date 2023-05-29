
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Android.App;
using Android.Content;
using Android.Gms.Tasks;
using Android.OS;
using Android.Runtime;
using Android.Util;
using Android.Views;
using Android.Widget;
//using Firebase.Database;
using Firebase.Firestore;
//using Google.Cloud.Firestore;
using TestQuest.DataModels;
using TestQuest.Helpers;


namespace TestQuest.EventListeners
{

	public class QuestListeners : Java.Lang.Object, IOnSuccessListener
    {
        List<Question> questionList = new List<Question>();
        // Nododam jautåjumus aktivitåtei, izmantojot Event
        public event EventHandler<QuestionDataEventArgs> QuestionsRetrived;

        public class QuestionDataEventArgs : EventArgs
        {
            public List<Question> Questions { get; set; }
        }


        public void OnCancelled(DownloadError error)
		{

            // testa vērtības

            Question question2 = new Question();
            question2.nr = "nr";
            question2.jaut = "Test qestion";
            question2.media = "testmedia";
            question2.atb1text = "atb01";
            question2.atb1right = false;
            question2.atb2text = "atbo2";
            question2.atb2right = false;
            question2.atb3text = "atb03";
            question2.atb3right = false;
            question2.atb4text = "atb04";
            question2.atb4right = true;
            questionList.Add(question2);

            QuestionsRetrived.Invoke(this, new QuestionDataEventArgs { Questions = questionList });


        }


        public void OnSuccess(Java.Lang.Object result)
        {
            var snapshot = (QuerySnapshot)result;
            if (!snapshot.IsEmpty)
            {
                //var child = snapshot.Children.ToEnumerable<DataSnapshot>();
                var documents = snapshot.Documents;
                questionList.Clear();
                foreach (DocumentSnapshot questionData in documents)
                {
                    Question question = new Question();
                    //question.nr = questionData.Get(Key);
                    question.jaut = questionData.Get("jaut").ToString();
                    question.media = questionData.Get("media").ToString();
                    question.atb1text = questionData.Get("atb1[0]").ToString();
                    question.atb1right = ((bool)questionData.Get("atb1[1]"));
                    question.atb2text = questionData.Get("atb1[0]").ToString();
                    question.atb2right = ((bool)questionData.Get("atb1[1]"));
                    question.atb3text = questionData.Get("atb1[0]").ToString();
                    question.atb3right = ((bool)questionData.Get("atb1[1]"));
                    question.atb4text = questionData.Get("atb1[0]").ToString();
                    question.atb4right = ((bool)questionData.Get("atb1[1]"));
                    questionList.Add(question);
                }
                QuestionsRetrived.Invoke(this, new QuestionDataEventArgs { Questions = questionList });
            }
        }
           public void Create()
        {
            //CollectionReference questionRef = AppDataHelper.GetDatabase().Collection("questionnaire");

            //questionRef.Firestore.AddSnapshotsInSyncListener(this, QuestionDataEventArgs);
 
        }
        public void FetchData()
        {
            //CollectionReference questionRef = AppDataHelper.GetDatabase().Collection("questionnaire");
            //AppDataHelper.GetDatabase().Collection("questionnaire");
            //Java.Lang.Object result = "1";
            //var snapshot = QuerySnapshot;

            //if (!snapshot.IsEmpty)
            //{
            //    //var child = snapshot.Children.ToEnumerable<DataSnapshot>();
            //    var documents = snapshot.Documents;
            //    questionList.Clear();
            //    foreach (DocumentSnapshot questionData in documents)
            //    {
            //        Question question = new Question();
            //        //question.nr = questionData.Get(Key);
            //        question.jaut = questionData.Get("jaut").ToString();
            //        question.media = questionData.Get("media").ToString();
            //        question.atb1text = questionData.Get("atb1[0]").ToString();
            //        question.atb1right = ((bool)questionData.Get("atb1[1]"));
            //        question.atb2text = questionData.Get("atb1[0]").ToString();
            //        question.atb2right = ((bool)questionData.Get("atb1[1]"));
            //        question.atb3text = questionData.Get("atb1[0]").ToString();
            //        question.atb3right = ((bool)questionData.Get("atb1[1]"));
            //        question.atb4text = questionData.Get("atb1[0]").ToString();
            //        question.atb4right = ((bool)questionData.Get("atb1[1]"));
            //        questionList.Add(question);
            //    }
            //    QuestionsRetrived.Invoke(this, new QuestionDataEventArgs { Questions = questionList });
            //}

        }


    }
}

