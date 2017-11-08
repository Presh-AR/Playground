trigger Accounttriggers on Account (before insert) {
	System.debug('AutoRabit Commnet');
    AccountTriggerhandler.getTriggeredAccount();
    OpportunityHandler.getRecords();
}