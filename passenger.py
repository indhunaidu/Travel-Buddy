import email
from sqlite3 import Time
from telnetlib import NOP
from time import time
from flask import Flask, render_template, request, redirect, url_for, session
from flask_mysqldb import MySQL
import MySQLdb.cursors
import re
import json 

data = {'Driver':
  [{
    'origin': 'Hoboken Waterfront Walkway 635',
    'destination': 'Pier A Park 199 Piers & Broadway',
    'No of Passenger': 1,
    'name': 'anand godhani',
    
   },
   {
    'origin': 'Hoboken Historical Museum',
    'destination': 'Hoboken/NJ Transit Terminal',
    'No of Passenger': 2,
    'name': 'Janice Myers',
    'name':'Andrew Snyder',
  },
  {
    'origin': 'St. Matthew Trinity Lutheran Church',
    'destination': 'Proto Gallery',
    'No of Passenger': 3,
    'name': 'Victor Gentry',
     'name': 'Adam Mccoy',
      'name': 'Kenneth Macdonald',
  },
   {
    'origin': 'Barsky Gallery',
    'destination': 'ST Ann Church',
    'No of Passenger': 1,
    'name': 'Mary Gray',
   
  },
   {
    'origin': 'Carlo Bakery Classes',
    'destination': 'Field Colony',
    'No of Passenger': 2,
    'name': 'Virginia Keller',
     'name': 'Thomas Elliott',
     
  }]
}

json_string = json.dumps(Driver)
print(json_string)

"""with open("data.json", "r") as read_file :
   json.dump(json_string, i)"""

with open("data_file.json", "r") as read_file:
    Driver = json.load(read_file)
