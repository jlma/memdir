require "active_record"
ActiveRecord::Base.establish_connection(:adapter => "sqlite3",
:database => "/home/jim/work/memdir/db/development.sqlite3")
class Membership < ActiveRecord::Base
end
#member = Membership.find(1)
#member.husbandName = "James"
#member.save

#member = Membership.new
#member.surname =
#member.husbandName =
#member.fmcaNumber =
#member.photoFile =
#member.save

#member = Membership.new
#member.surname = "Barett"
#member.husbandName = "Ted"
#member.fmcaNumber = "F123456"
#member.photoFile =
#member.save

member = Membership.find(2)
member.wifeName = "Martha"
member.save
