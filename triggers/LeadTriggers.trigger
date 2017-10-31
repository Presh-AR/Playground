trigger LeadTriggers on Lead (before insert) {
	System.debug('Test');
}