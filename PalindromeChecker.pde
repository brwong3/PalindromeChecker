public void setup()
{
  String lines[] = {"test","rotator","rewriter","nurses run","Madam, I'm Adam!","A Man! A Plan! A Canal! Panama!"};
  System.out.println("There are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String reverse = noPunctuation(noSpaces(reverse(word.toLowerCase())));
  String Word = noPunctuation(noSpaces((word.toLowerCase())));
  if(reverse.equals(Word)) {
    return true;
  }
  else {
    return false;
  }
}
public String reverse(String str)
{
  String answer= "";
  for(int i = 0; i < str.length(); i++) {
    answer += str.substring(str.length() - 1 - i, str.length() - i);
  }
  return answer;
}

public String noSpaces(String sWord){
  String answer = "";
  for(int i = 0; i < sWord.length(); i++) {
    if(sWord.charAt(i) != ' ') {
      answer += sWord.substring(i, i + 1);
    }
  }
  return answer;
}

public String noPunctuation(String sWord) {
  String answer = "";
  for(int i = 0; i < sWord.length(); i++) {
    if(Character.isLetter(sWord.charAt(i)) == true) {
      answer += sWord.substring(i,i+1);
    }
  }
  return answer;  
}

