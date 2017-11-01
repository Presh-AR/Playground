trigger LeadTriggers on Lead (before insert) {
	MYDemoHandler.test(); 
    System.debug('Trigger CI Jobs');
}