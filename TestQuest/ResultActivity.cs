
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
using Newtonsoft.Json;
using Result = TestQuest.DataModels.Result;
using static Android.Provider.ContactsContract.CommonDataKinds;

namespace TestQuest
{
	[Activity (Label = "ResultActivity")]			
	public class ResultActivity : Activity
	{
        public Result result;
        Button btnSave, btnShare, btnAgain, btnQuit;
        TextView showResult;
		protected override void OnCreate (Bundle savedInstanceState)
		{
			base.OnCreate (savedInstanceState);
            SetContentView(Resource.Layout.resultLayout);
            string json = Intent.GetStringExtra("Result");
            Result result = JsonConvert.DeserializeObject<Result>(json);

            Button btnSave = FindViewById<Button>(Resource.Id.btnSaveResult);
            Button btnShare = FindViewById<Button>(Resource.Id.btnShareResult);
            Button btnAgain = FindViewById<Button>(Resource.Id.btnPlayAgain);
            Button btnQuit = FindViewById<Button>(Resource.Id.btnQuit);
            TextView showResult = FindViewById<TextView>(Resource.Id.txtResult);

            // Create your application here
            showResult.Text = result.nick;


            btnQuit.Click += (s, e) =>
            {
                QuitApplication();
            };

            void QuitApplication()
            {
                Intent intent = new Intent(this, typeof(ResultActivity));
                //StartActivity(intent);
                Finish();
            }


        }
    }
}

