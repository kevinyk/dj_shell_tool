**A Shell Script For Django Boilerplate**

Tested using Django (1.10.2), and Python 2.7.11 with a virtual environment on Mac OS X 10.11

**A quick overview on how to use this script:**



`#/Applications/Utilities/terminal.app`

This line declares to your computer what program should run this script. If you use a different terminal app, you can refer to the app's directory so this script will open up inside of that app.


`my_dir="blank"`

`venv_dir="blank"`

After you copy this script, you need to set values to these variables. The values should be directories, `my_dir` points to the directory you want your generated django projects to go. `venv_dir` points to the virtual environment directory with your django specific pip installs, including `/bin/activate`.

These are not strings! Shell scripting is very specific about spaces, so make sure you don't have any spaces between the `=` and the value. Make sure you define the directory using an absolute path, usually starting in `~` or `/`

Don't try to use `.` as the directory, it might mess up the script's file pathing. Apologies.

After you set up the script, start it in your terminal with `source {{directory_to_django_kt.sh}}`

**Important notes:**

* This script was developed for iTerm and Terminal inside of Mac OS. Windows 10 has added support for a bash shell, but user beware, this script is untested in Windows computers. Please let me know of anything weird that happens. Same goes for git bash.
* If you are getting errors that are not bash errors, it's not because of my script! (probably)

* This script creates:
	1. A django project
	2. A django app inside of a nested directory `apps`
	3. A boilerplate `urls.py` inside of the project directory that points to the created app
	4. A boilerplate `urls.py`, `views.py`, and `index.html` inside of the created app to display a simple page located at `apps/{{APP_NAME}}/templates/index.html`.
	5. The session table in a SQLite db

* This script does not:

	1. Modify `settings.py` to include the created app. shame on me. I have a comment in the script for where you could use an app shortcut like atom to open that directory for you.
	2. Use multiple apps and namespacing
	3. Stop the script if any steps cause an error. If you see one, just use `control + c` to quickly back out. You still might have a hollow shell of a django project, depending on where the error occured.
	4. Cure serious diseases

**TO DO:**


	1. Automate modification of settings.py file, need to research more sed
	2. Automate initialization of the script so if a user hasn't declared directories, they can and the inputs will be saved in a configuration text file. This way there is less setup.

