
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

namespace TestQuest.DataModels
{
    public class Question
    {
        public string nr { get; set; }
        public string jaut { get; set; }
        public string media { get; set; }
        public string atb1text { get; set; }
        public bool atb1right { get; set; }
        public string atb2text { get; set; }
        public bool atb2right { get; set; }
        public string atb3text { get; set; }
        public bool atb3right { get; set; }
        public string atb4text { get; set; }
        public bool atb4right { get; set; }

        }
    }