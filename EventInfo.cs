using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ChickFilAMSIS4003
{
    public class EventInfo
    {
        //This are the members of the EventInfo Class.
        //It's the attributes we want to store about the event
        public int CaterrequestID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string EmailAddress { get; set; }
        public string EventDate { get; set; }
        public string EventTime { get; set; }
        public string GuestCount { get; set; }
        public string LocationAddress1 { get; set; }
        public string LocationAddress2 { get; set; }
        public string City { get; set; }
        public int RequestStateID { get; set; }
        public string ZipCode { get; set; }
        public string EventDetails { get; set; }

    }
}