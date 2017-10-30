public Class CreateAccount
{
    public Account CreateRecord(String sample)
    {
        //New Account Changes by John QA Doe
        Account acc = new Account();
        acc.Name = sample;
        return acc;
    }
}