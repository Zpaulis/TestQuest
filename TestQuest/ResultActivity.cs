
using System;
//using System.Collections.Generic;
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
//using static Android.Provider.ContactsContract.CommonDataKinds;
using System.IO;
using Microsoft.Data.Sqlite;
using Xamarin.Essentials;
//using static Android.Provider.Telephony.Mms;
//using static System.Net.Mime.MediaTypeNames;

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
        string dbFileName = "questresults.db";
        Java.IO.File sdDir = Android.OS.Environment.GetExternalStoragePublicDirectory(Android.OS.Environment.DirectoryDownloads);
        string pathToExternalDb;


        // [Obsolete]
        protected override void OnCreate (Bundle savedInstanceState)
		{
			base.OnCreate (savedInstanceState);
            SetContentView(Resource.Layout.resultLayout);
            // Saņem Questa rezultātus
            string json = Intent.GetStringExtra("Result");
            Result result = JsonConvert.DeserializeObject<Result>(json);
            // Vieta rezultātu saglabāšanai
            pathToExternalDb = sdDir + "/" + dbFileName;


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
            //var pathToExternalDb = Path.Combine(FolderPath, "questresults.db"); // Vieta rezultātu saglabāšanai - Slepena :)
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
                showResult.Text = "YOU WIN, " + result.nick + "!";
                // var source = Resources.OpenRawResource(Resource.Raw.win); - NEDARBOJĀS
                videoView.SetVideoURI(Android.Net.Uri.Parse(pathToVideoWin));
                videoView.Start();
            }
            else
            {
                showResult.Text = "SORRY, " + result.nick + "!";
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
            btnShare.Click += (s, e) =>
            {
                ShareFile(dbFileName);
            };
            btnQuit.Click += (s, e) =>
            {
                QuitApplication();
            };
            btnSave.Click += (s, e) =>
            {
                if (File.Exists(pathToExternalDb))
                {
                    string sqldb = @$"INSERT INTO result (key, login, nick, size, perc) VALUES ('{result.key}', '{result.login}', '{result.nick}', {result.size},{result.perc});";
                    AddToDB(sqldb);
                }
                else
                {
                    string sqldb = @$"INSERT INTO result (key, login, nick, size, perc) VALUES ('{result.key}', '{result.login}', '{result.nick}', {result.size},{result.perc});";
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
        // Share rezultātu failu questresults.db
        private void ShareFile(string Filename)
        {
            Share.RequestAsync(new ShareFileRequest
            {
                File = new ShareFile(Path.Combine(sdDir.ToString(), Filename)),
                Title = Filename
            });
        }

        private void CreateDB(string sqldb)
        {
            string SQLDB = @"DROP TABLE IF EXISTS result;
            CREATE TABLE ""result"" (
	""key""	TEXT NOT NULL UNIQUE,
	""login""	TEXT,
	""nick""	TEXT NOT NULL,
	""size""	INTEGER NOT NULL,
	""perc""	REAL NOT NULL,
	PRIMARY KEY(""key"")
);" + sqldb;
            try
            {
                using (var dbConn = new SqliteConnection(connectionString))
                {
                    dbConn.Open();
                    using (SqliteCommand cmd = new SqliteCommand(SQLDB, dbConn))
                    {
                        int response = cmd.ExecuteNonQuery();
                        Toast.MakeText(this, "DB created,results Saved!", ToastLength.Short).Show();
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
            string SQLDB = sqldb;
            try
            {
                using (var dbConn = new SqliteConnection(connectionString))
                {
                    dbConn.Open();
                    using (SqliteCommand cmd = new SqliteCommand(SQLDB, dbConn))
                    {
                        int response = cmd.ExecuteNonQuery();
                        Toast.MakeText(this, "Results Saved to existing DB!", ToastLength.Short).Show();
                    }
                    dbConn.Close();
                }
            }
            catch (Exception ex)
            {
                Toast.MakeText(this, $"{ex.Message} ERROR2", ToastLength.Short).Show();
            }

        }


    }
}

