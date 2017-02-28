**A Shell Script For Django Boilerplate**

Important notes:

* This script was developed for iTerm and Terminal inside of Mac OS. Windows 10 has added support for a bash shell, but user beware, this script is untested in Windows computers. Please let me know of anything weird that happens.
* If you are getting errors that are not bash errors, it's not because of my script! (probably)

* This script creates:
	1. A django project
	2. A django app inside of a nested directory `apps`
	3. A boilerplate `urls.py` inside of the project directory that points to the created app
	4. A boilerplate `urls.py`, `views.py`, and `index.html` inside of the created app to display a simple page.
	5. Migrates the session table into a SQLite db

* This script does not:

	1. Modify `settings.py` to include the created app. shame on me. I have a comment in the script for where you could use an app shortcut like atom to open that directory for you.
	2. Use multiple apps and namespacing
	3. Cure serious diseases

**A quick overview on how to use this script:**



`#/Applications/Utilities/terminal.app`

This line declares to your computer what program should run this script. If you use a different terminal app, you can refer to the app's directory so this script will open up inside of that app.


`my_dir="blank"`

`venv_dir="blank"`

After you copy this script, you need to set values to these variables. The values should be directories, `my_dir` points to the directory you want your generated django projects to go. `venv_dir` points to the virtual environment directory with your django specific pip installs.

These are not strings! Don't try to use `.` as the directory, it might mess up the script's file pathing. Apologies.
