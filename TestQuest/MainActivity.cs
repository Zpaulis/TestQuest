using System;
using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views.InputMethods;
using Android.Widget;
using AndroidX.AppCompat.App;



namespace TestQuest
{
    [Activity(Label = "@string/app_name", Theme = "@style/AppTheme.NoActionBar", MainLauncher = true)]
    public class MainActivity : AppCompatActivity
    {
        public int qCount;
        private string nickname;
        protected override void OnCreate(Bundle savedInstanceState)
        {

            base.OnCreate(savedInstanceState);
            Xamarin.Essentials.Platform.Init(this, savedInstanceState);
            SetContentView(Resource.Layout.activity_main);

            // ToDo pielikt spineri ar jautåjumu skaitu
            qCount = 0;



            Spinner spnQuestionCount = FindViewById<Spinner>(Resource.Id.spnQuestionCount);
            spnQuestionCount.ItemSelected += new EventHandler<AdapterView.ItemSelectedEventArgs>(SelectedQuestionCount);
            var adapter = ArrayAdapter.CreateFromResource(this, Resource.Array.questionCount, Android.Resource.Layout.SimpleSpinnerItem);
            adapter.SetDropDownViewResource(Android.Resource.Layout.SimpleSpinnerItem);
            spnQuestionCount.Adapter = adapter;


            // ToDo pielikt EditText ar komandas nosaukuma ievadu
            EditText edtNickname = FindViewById<EditText>(Resource.Id.edtNickname);


            // ToDo pielikt switch ar timeri / bez timera



            Button btnStartQuest = FindViewById<Button>(Resource.Id.btnStartQuest);
            btnStartQuest.Click += (s, e) =>
            {
                String start = DateTime.Now.ToString();
                String nickname = (edtNickname.Text != "") ? edtNickname.Text : "Annonymous";
                Intent intent = new Intent(this, typeof(QuestActivity));
                intent.PutExtra("Qcount", qCount);
                intent.PutExtra("Nickname", nickname);
                intent.PutExtra("Start", start);
                StartActivity(intent);
                Finish();
            };


        }

        private void SelectedQuestionCount(object sender, AdapterView.ItemSelectedEventArgs e)
        {
            Spinner spnQuestionCount = (Spinner)sender;
            string choise = string.Format("{0}", spnQuestionCount.GetItemAtPosition(e.Position));
            Toast.MakeText(this, choise, ToastLength.Short).Show();
            // ToDo šo varētu pārtaisīt ae Enum
            switch (choise)
            {
                case "testā 3 jautājumi":
                    qCount = 3;
                    break;
                case "testā 5 jautājumi":
                    qCount = 5;
                    break;
                case "testā 7 jautājumi":
                    qCount = 7;
                    break;
                case "testā 10 jautājumu":
                    qCount = 10;
                    break;
                default:
                    qCount = 10;
                    break;
            }
        }

        // Šī var noderēt labākai Soft klaviatūras novākšanai
        //private void DismissKeyboard()
        //{
        //    var currentFocus = this.CurrentFocus;
        //    if (currentFocus != null)
        //    {
        //        InputMethodManager inputMethodManager = (InputMethodManager)this.GetSystemService(Context.InputMethodService);
        //        inputMethodManager.HideSoftInputFromWindow(currentFocus.WindowToken, HideSoftInputFlags.None);
        //    }
        //}


        public override void OnRequestPermissionsResult(int requestCode, string[] permissions, [GeneratedEnum] Android.Content.PM.Permission[] grantResults)
        {
            Xamarin.Essentials.Platform.OnRequestPermissionsResult(requestCode, permissions, grantResults);

            base.OnRequestPermissionsResult(requestCode, permissions, grantResults);
        }
    }
}
