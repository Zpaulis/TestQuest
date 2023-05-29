
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Util;
using Android.Views;
using Android.Widget;

namespace TestQuest.EventListeners
{
	public static class Utils
	{
        public static Task WhenClicked(this Button button)
        {
            var tcs = new TaskCompletionSource<bool>();
            EventHandler handler = null;
            handler = (sender, args) =>
            {
                tcs.TrySetResult(true);
                button.Click -= handler;
            };
            button.Click += handler;
            return tcs.Task;

        }

    }
}

