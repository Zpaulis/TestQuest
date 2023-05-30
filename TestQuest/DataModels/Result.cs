using System;
namespace TestQuest.DataModels
{
	public struct Result
	{
        public string key { get; set; }
        public string login { get; set; }
        public string nick { get; set; }
        public string start { get; set; }
        public int size { get; set; }
        public bool q1 { get; set; }
        public bool q2 { get; set; }
        public bool q3 { get; set; }
        public bool q4 { get; set; }
        public bool q5 { get; set; }
        public bool q6 { get; set; }
        public bool q7 { get; set; }
        public bool q8 { get; set; }
        public bool q9 { get; set; }
        public bool q10 { get; set; }
        public long perc { get; set; }

        //public static Result Null => new Result("", "", "Anonymous", "", 10, false, false, false, false, false, false, false, false, false, false, 2.5);

    }
}

