
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Util;
using Android.Views;
using Android.Widget;
using Firebase;
//using Firebase.Firestore;
using Google.Cloud.Firestore;

namespace TestQuest.Helpers
{
    public static class AppDataHelper
    {
        public static FirestoreDb GetDatabase()
        {

            var app = FirebaseApp.InitializeApp(Application.Context);
            FirestoreDb database;

            if (app == null)
            {
                {
                    //Piekļuve Firestore datu bāzei

                    var options = new FirebaseOptions.Builder()
                        .SetProjectId("study-exercise")
                        .SetApplicationId("study-exercise")
                        .SetApiKey("AIzaSyAGYh4a83sQiJSZcf6t8ICdZJ6a0oWrm1U")
                        .SetDatabaseUrl("https://study-exercise.firebaseio.com")
                        .SetStorageBucket("study-exercise.appspot.com")
                        .Build();
                    app = FirebaseApp.InitializeApp(Application.Context, options);
                    database = FirestoreDb.Create("study-exercise");

                }
            }
            else
            {
                database = FirestoreDb.Create("study-exercise");

            }

            return database;
        }
    }
}