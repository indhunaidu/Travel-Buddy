# Travel-Buddy
Requirements
import email
from sqlite3 import Time
from telnetlib import NOP
from time import time
from flask import Flask, render_template, request, redirect, url_for, session
from flask_mysqldb import MySQL
import MySQLdb.cursors
import re
