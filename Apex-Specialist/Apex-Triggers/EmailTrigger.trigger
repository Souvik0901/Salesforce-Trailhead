trigger ExampleTrigger on Contact (before insert) {
    if(Trigger.isInsert){
        Integer recordCount = Trigger.new.size();
        EmailManager.sendMail('souvik001@yopmail.com', 'Trailhead Trigger Tutorial',
                    recordCount + ' contact(s) were inserted.');
     }
    else if (Trigger.isDelete) {
        // Process after delete
    }
 
}
