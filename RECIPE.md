# What's My Ping Again?

*This is a simple recipe to check ping/latency of your server. It will also demonstrate the ability of Hotwire and how turbo frames can update parts of  your webpage without reloading/rerending the entire page.*


Hi everyone! My name is Grace and I am a recent bootcamp grad, self-taught ruby-ist who is obsessed with Rails and now... Hotwire. So, what is Hotwire?

Hotwire is the new default frontend framework for Rails. This was launched with Rails 7.0 in December 2021. It uses Turbo and Stimulus to make a Rails app run super fast, like a single page app, making the app feel much more responsive and fast.

---

- **Problem:**

  You are a new developer interested in checking the ping of your server because you could not find one online. You could also be a react dev who does not believe Rails can achieve being an SPA without React as frontend. Or you could also be a recent bootcamp grad with an annoying friend named Grace who insists-you-learn-Rails-because-it-is-just-as-responsive-as-React(oddly specific). :innocent:

  How do I know for sure that the entire page isn't re-rendering? And if specific frames can be updated, how do I calculate the responsiveness of that frame?

---

- **Solution:**



  After hours of scouring through the internet and unsuccessfully finding a code that displays ping. I read through a PING explanation and crafted a super simple diagnostic tool that you can easily add to your Hotwire page.

  The idea with a ping:
    - Client intiates process by sending a request.
    - Server responds that the request was recieved.
    - Client knows the local time of the request sent and the local time of the server response. It computes the difference, and this is the "ping time"

  This is the final product. There are 2 frames inside the purple rectangles and both are in Turbo Frames.

  <img src="https://cdn.discordapp.com/attachments/919468128432455700/983967619096903680/aaa.PNG" alt="page frame" width="500">
    
  *Turbo Frames allow defined parts of a page to be updated on request. Any links and forms inside the frame are captured and the contents update after receiving a response. This makes Turbo in control of both the request to the server and the response from the server.*
   
      
  The first frame is meant to show how you can interact with one frame and only this frame is affected. When you click on the link, the timestamp of frame one changes but the other remains the same.

  Below, is the basic code with the timestamp being called when clicked.

  <img src="https://cdn.discordapp.com/attachments/919468128432455700/983899126565572608/aab.PNG" alt="first frame" width="500">


  The second frame has a link where the count of the number goes up by one when clicked. The GET request goes to the controller which saves the first timestamp.

  <img src="https://cdn.discordapp.com/attachments/919468128432455700/983963292374540288/aad.PNG" alt="controller" width="400">


  The timestamp below the current count, is the time of response. It is generated from Rails helper. It also contains the random color changer, which changes the color of every increment. The speed of color will change depending on the latency. 

  <img src="https://cdn.discordapp.com/attachments/919468128432455700/983968215631814666/aae.PNG" alt="helper" width="300">
  
  Then the ping is calculated by taking these two numbers and subtracting them with eachother.


---

- **Discussion Section:**

    The name "Hotwire" derives from "HTML over the wire", which means if the server is geographically closer to the user, the app will load that much quicker.

    As a gamer, sometimes you are allowed to choose what server you want to play in. Picking the server in a closer physical location means your latency will be lower and the responsiveness will be higher. Which is where [Fly.io](https://fly.io/) comes in!

  *Fly is a platform for running full stack apps and databases close to your user. We deliver your application to your users globally, with the highest possible availability and the lowest possible latency.*
    
    I hope this was helpful to you all. Please let me know if I am incorrect about anything. I am only a junior rails engineer who is always open to learn more!!
---

- **Read more about it**
  - [https://medium.com/pragmatic-programmers/adding-interactivity-with-turbo-frames-565a51271196](https://medium.com/pragmatic-programmers/adding-interactivity-with-turbo-frames-565a51271196)
  - [https://turbo.hotwired.dev/handbook/frames](https://turbo.hotwired.dev/handbook/frames/)