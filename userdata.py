# -*- coding: utf-8 -*-

import random
import string

class userdata:
	def	pswd(self):
		passw = ''.join(random.choice(string.ascii_lowercase)  for _ in range(7))
		return passw		
	
