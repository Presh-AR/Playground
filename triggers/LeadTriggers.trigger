trigger LeadTriggers on Lead (before insert) {
	MYDemoHandler.test();    
}