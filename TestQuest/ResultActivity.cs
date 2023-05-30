
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
using System.IO;
using Microsoft.Data.Sqlite;
using static Android.Provider.Telephony.Mms;
using static System.Net.Mime.MediaTypeNames;

namespace TestQuest
{
	[Activity (Label = "ResultActivity")]			
	public class ResultActivity : Activity
	{
        public Result result;
        Button btnSave, btnShare, btnAgain, btnQuit;
        TextView showResult;
        VideoView videoView;

        string connectionString;
        string pathToDatabase;
        //Java.IO.File sdDir = Android.OS.Environment.GetExternalStoragePublicDirectory(Android.OS.Environment.DirectoryDocuments);
        //string pathToExternalDb;








        [Obsolete]
        protected override void OnCreate (Bundle savedInstanceState)
		{
			base.OnCreate (savedInstanceState);
            SetContentView(Resource.Layout.resultLayout);
            // Saņem Questa rezultātus
            string json = Intent.GetStringExtra("Result");
            Result result = JsonConvert.DeserializeObject<Result>(json);
            // Vieta rezultātu saglabāšanai
            // pathToExternalDb = sdDir + "/" + "questresults.db";


            Button btnSave = FindViewById<Button>(Resource.Id.btnSaveResult);
            Button btnShare = FindViewById<Button>(Resource.Id.btnShareResult);
            Button btnAgain = FindViewById<Button>(Resource.Id.btnPlayAgain);
            Button btnQuit = FindViewById<Button>(Resource.Id.btnQuit);
            TextView showResult = FindViewById<TextView>(Resource.Id.txtResult);
            VideoView videoView = FindViewById<VideoView>(Resource.Id.vidResult);

            //Ceļi uz failiem
            var folders = this.GetExternalMediaDirs();
            var FolderPath = folders[0].AbsolutePath;
            var pathToVideoWin = Path.Combine(FolderPath, "win.mp4");
            var pathToVideoLoose = Path.Combine(FolderPath, "lose.mp4");
            var pathToExternalDb = Path.Combine(FolderPath, "questresults.db"); // Vieta rezultātu saglabāšanai
            connectionString = $"Data Source={pathToExternalDb};";
            // Aizkopē video uz failiem:
            using (var videoSource1 = Resources.OpenRawResource(Resource.Raw.win))
            using (var videoSource2 = Resources.OpenRawResource(Resource.Raw.lose))
            {
                using (var destination = File.Create(pathToVideoWin))
                {
                    videoSource1.CopyTo(destination);
                }
                using (var destination = File.Create(pathToVideoLoose))
                {
                    videoSource2.CopyTo(destination);
                }
            }

            if (result.perc > 0.5)
            {
                showResult.Text = "YOU WIN, " + result.nick + "!" + result.perc.ToString();
                // var source = Resources.OpenRawResource(Resource.Raw.win); - NEDARBOJĀS
                videoView.SetVideoURI(Android.Net.Uri.Parse(pathToVideoWin));
                videoView.Start();
            }
            else
            {
                showResult.Text = "SORRY, " + result.nick + "!" + result.perc.ToString();
                videoView.SetVideoURI(Android.Net.Uri.Parse(pathToVideoLoose));
                videoView.Start();

            }



            // Ko dara visas pogas
            btnAgain.Click += (s, e) =>
            {
                Intent intent = new Intent(this, typeof(MainActivity));
                intent.PutExtra("Nickname", result.nick); // ToDo Atkårtoti spēlējot, Nickname saglabājas
                StartActivity(intent);
                Finish();
            };
            btnQuit.Click += (s, e) =>
            {
                QuitApplication();
            };
            btnSave.Click += (s, e) =>
            {
                if (File.Exists(pathToExternalDb))
                {
                    string sqldb = @$"INSERT INTO result (key, login, nickname, size, perc) VALUES ('{result.key}', '{result.login}', '{result.nick}', {result.size},{((int)result.perc)});";
                    AddToDB(sqldb);
                }
                else
                {
                    string sqldb = @$"INSERT INTO result (key, login, nickname, size, perc) VALUES ('{result.key}', '{result.login}', '{result.nick}', {result.size},{((int)result.perc)});";
                    CreateDB(sqldb);
                }
            };
            // ToDo Pocedūra pieklājīgam QUIT
            void QuitApplication()
            {
                Intent intent = new Intent(this, typeof(ResultActivity));
                //StartActivity(intent);
                Finish();
            }


        }

        private void CreateDB(string sqldb)
        {
            string SQLDB = @"DROP TABLE IF EXISTS result;
            CREATE TABLE result(key VARCHAR(100), login VARCHAR(40), nickname VARCHAR(50), size INT, perc INT);" + sqldb;
            try
            {
                using (var dbConn = new SqliteConnection(connectionString))
                {
                    dbConn.Open();
                    using (SqliteCommand cmd = new SqliteCommand(SQLDB, dbConn))
                    {
                        int response = cmd.ExecuteNonQuery();
                        Toast.MakeText(this, "Results Saved!", ToastLength.Short).Show();
                    }
                    dbConn.Close();
                }
            }
            catch (Exception ex)
            {
                Toast.MakeText(this, $"{ex.Message} ERROR", ToastLength.Short).Show();
            }
        }
        private void AddToDB(string sqldb)
        {
            Toast.MakeText(this, "DB already exists", ToastLength.Short).Show();
        }

        


    }
}

