# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#require "active_record"
#ActiveRecord::Base.establish_connection(:adapter => "sqlite3",
#:database => "/home/jim/work/memdir/db/development.sqlite3")
#class Member < ActiveRecord::Base
#end

Member.delete_all
Phone.delete_all

member = Member.new
	member.lastName = "Mathis"
	member.husbandName = "James"
	member.wifeName = "Karen"
	member.fmcaNumber = "F410009"
	member.photoFile = "DSCN0284.JPG"
	member.save
	
	member = Member.last
	
	phone = Phone.new
		phone.fkMemberID = member.id
		phone.phoneNumber = "678-586-5549"
		phone.whichPhone = "Home"
		phone.save
		
	phone = Phone.new
		phone.fkMemberID = member.id
		phone.phoneNumber = "770-605-9807"
		phone.whichPhone = "Karen's cell"
		phone.save
		
	phone = Phone.new
		phone.fkMemberID = member.id
		phone.phoneNumber = "770-605-9808"
		phone.whichPhone = "Jim's cell"
		phone.save
		
	email = Email.new
		email.fkMemberID = member.id
		email.emailAddress = "karen_mathis@bellsouth.net"
		email.emailWho = "Karen's email"
		email.save
		
	email = Email.new
		email.fkMemberID = member.id
		email.emailAddress = "jlma@bellsouth.net"
		email.emailWho = "Jim's email"
		email.save
		
	address = Address.new
		address.fkMemberID = member.id
		address.addr1 = "105 Old Plantation Way"
		address.city = "Fayetteville"
		address.state = "GA"
		address.zip = "30214"
		address.addressWhich = "Home"
		address.save
		
	ec = EmergencyContact.new
		ec.fkMemberID = member.id
		ec.name = "David Sterling"
		ec.addr1 = "1512 Hwy 54 West"
		ec.addr2 = "Lot 52A"
		ec.city = "Fayetteville"
		ec.state = "GA"
		ec.zip = "30214"
		ec.phoneNumber = "404-774-3806"
		ec.save
		
	
		
		
		
	

