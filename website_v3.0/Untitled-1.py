@app.route('/post_ride', methods =['GET', 'POST'])
def registernew1():
	msg = ''
	if request.method == 'POST' and 'origin' in request.form and 'destination' in request.form and 'date' in request.form and 'no of passenger' in request.form  and  'time' in request.form:
		origin = request.form['origin']
		destination = request.form['destination']
		date = request.form['date']
		nops=request.form['nops']
		hours=request.form['time']
		cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
		cursor.execute('SELECT * FROM rides WHERE Email = % s', (email, ))
		account = cursor.fetchone()
		if account:
			msg = 'Account already exists !'
		elif not re.match(r'[^@]+@[^@]+\.[^@]+', email):
			msg = 'Invalid email address !'

		elif not re.match(r'[A-Za-z0-9]+', origin):
			msg = 'Age  must contain only numbers !'
		elif not re.match(r'[A-Za-z0-9]+',destination):
			msg = 'pn  must contain only numbers !'
		elif not re.match(r'[0-9]+', date:
			msg = 'Gender  must contain only characters !'
		elif not re.match(r'[0-9]+', hours:
			msg = 'Gender  must contain only characters !'
		elif not re.match(r'[0-9]+', nops:
			msg = 'Gender  must contain only characters !'
		
		elif not Gender or not pn or not Age or not confirmpassword or not name or not password or not email:
			msg = 'Please fill out the form !'
		else:
			cursor.execute('INSERT INTO signup_passenger VALUES (NULL, % s, % s, % s, % s, % s, % s)', (name, email, password ,Age, Gender, pn))
			mysql.connection.commit()
			msg = 'You have successfully registered !'
	elif request.method == 'POST':
		msg = 'Please fill out the form !'
	return render_template('rides.html', msg = msg)