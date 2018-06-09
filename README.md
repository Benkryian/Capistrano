#................................................................................
#Using capitsrano to automate web application deployments
#________________________________________________________________________________

Capistrano is written in Ruby, but it can easily be used to deploy any language.

Once installed, Capistrano gives you a cap tool to perform your deployments from the comfort of your command line.

  $ cd my-capistrano-enabled-project
  $ cap production deploy

When you run cap, Capistrano dutifully connects to your server(s) via SSH and executes the steps necessary to deploy your project. 
