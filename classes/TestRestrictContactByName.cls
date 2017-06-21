@isTest private class TestRestrictContactByName 
{
    @isTest static void testCreateContact1()  //positive case
    {
        Contact cont = new Contact(LastName = 'TestName-01');
        Database.SaveResult result = Database.Insert(cont, false);
        if (result.isSuccess()) 
        {
        // Operation was successful, so get the ID of the record that was processed
            System.debug('===========Successfully inserted account. Account ID: ' + result.getId());
        }
    }     
                
    @isTest static void testCreateContact2()  //negative case
    {
        Contact cont = new Contact(LastName = 'INVALIDNAME');
   
        Database.SaveResult result = Database.Insert(cont, false);   

        //In this case the insertion should have been stopped by the trigger
        System.assert(!result.isSuccess());
        System.assert(result.getErrors().size() > 0);
        System.assertEquals('The Last Name INVALIDNAME is not allowed for DML',
                             result.getErrors()[0].getMessage());

    }
}