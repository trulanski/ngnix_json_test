#!/usr/bin/python  
# -*- coding: utf-8 -*-

import sys, os 
import json, urllib2 

from pprint import pprint
from types import *  

# variables   
servers ='http://servers-api.va.3sca.net/servers.json'
datacenters ='http://datacenters-api.va.3sca.net/datacenters/'


def main():
	j = urllib2.urlopen(datacenters)
	j_datacenters = json.load(j)
	#pprint(j_datacenters)

        for iter in j_datacenters:
		print "-Datacenter"
		#pprint (iter)
                print "\t\t"+(iter[u'name'])
                print "\t\t"+(iter[u'location'])
		print "\t\t\t -Servers:"
		string_servers=iter['servers'].encode("utf-8")
		for server in string_servers.split(','):
			try:
				i = urllib2.urlopen("http://servers-api.va.3sca.net/servers/"+server+".json")
				j_servers = json.load(i)
                		print "\t\t\t\t"+(j_servers['name'])
                		print "\t\t\t\t"+(j_servers[u'description'])

			except urllib2.HTTPError, e:
				print 'Failed to open "%s".' %i


if __name__ == "__main__":   
   main()   # main function  

