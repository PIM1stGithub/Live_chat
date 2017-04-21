using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNet.SignalR;
//using System.Threading.Tasks;

public class myhub3 : Hub
{
    //public void Hello(string name, string msg)
    //{
    //    Clients.User(name).hello(msg);
    //}














    public void Hello(string name, string msg)
    {
        Clients.All.hello(name, msg);
    }
    // ---------
    //public void SendChatMessage(string who, string message)
    //{
    //    string name = Context.User.Identity.Name;

    //    Clients.Group(name).addChatMessage(name, message);
    //    Clients.Group("2@2.com").addChatMessage(name, message);
    //}

    //public override Task OnConnected()
    //{
    //    string name = Context.User.Identity.Name;
    //    Groups.Add(Context.ConnectionId, name);

    //    return base.OnConnected();
    //}
}

