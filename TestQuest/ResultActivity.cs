
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

namespace TestQuest
{
	[Activity (Label = "ResultActivity")]			
	public class ResultActivity : Activity
	{
        public Result result;
        Button btnSave, btnShare, btnAgain, btnQuit;
        TextView showResult;
        VideoView videoView;

        [Obsolete]
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
            VideoView videoView = FindViewById<VideoView>(Resource.Id.vidResult);

            // Aizkopē video uz failiem:
            var folders = this.GetExternalMediaDirs();
            var FolderPath = folders[0].AbsolutePath;
            var pathToVideoWin = Path.Combine(FolderPath, "win.mp4");
            var pathToVideoLoose = Path.Combine(FolderPath, "lose.mp4");
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
                intent.PutExtra("Nickname", result.nick);
                StartActivity(intent);
                Finish();
            };
            btnQuit.Click += (s, e) =>
            {
                QuitApplication();
            };
            // ToDo Pocedūra pieklājīgam QUIT
            void QuitApplication()
            {
                Intent intent = new Intent(this, typeof(ResultActivity));
                //StartActivity(intent);
                Finish();
            }

            

        }
    }
}

