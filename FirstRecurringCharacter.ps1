#PS Function to return first recurring character from string of arbitrary legnth $foo
function Get-FirstRecurringCharacter ([string]$Foo) {
    #Array to store occurrent characters for comparison
    $CharactersPresent = @()
    #Iterate through string $Foo
    for ($i = 0; $i -lt $Foo.length; $i++) {
        #If not already occurred, store in variable for comparison
        if ($CharactersPresent -notcontains $foo[$i]) { $CharactersPresent += $foo[$i] }
        #If already occurred, return value and stop
        elseif ($CharactersPresent -contains $foo[$i]) { 
            return $foo[$i]
        }
    }
}
