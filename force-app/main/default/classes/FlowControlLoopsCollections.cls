/**
* This is the FlowControlLoopsCollections class, part of the Developer Kickstart Week 2 curriculum
* at Cloud Code Academy. This class focuses on flow control, loops, and collections in Apex programming.
* The class provides a comprehensive understanding of various flow control structures, including if statements,
* jump statements, and loops like for loops. It also covers working with collections such as lists and maps.
*
* Topics covered in this class include:
* - Understanding and using if statements to make conditional decisions in code execution.
* - Using jump statements like break and continue to control the flow of execution in loops and switch statements.
* - Working with for loops to iterate over a set of elements in Apex.
* - Understanding collections and using lists and maps to store and manipulate data.
*
* This class is designed for developers who have a basic understanding of Apex and want to deepen their knowledge
* in flow control, loops, and collections. By mastering these concepts, developers will be able to write more
* efficient and effective code in their Salesforce projects.
*
* @author Ryan Williams
*/

public with sharing class FlowControlLoopsCollections {
    
    /**
     * Compares two numbers and return "Hello World!" x is greater than the y.
     * If either of the numbers is null or x is less than y, return null.
     * Example: helloWorld(40, 10) should return "Hello World!"
     * @param x The first number.
     * @param y The second number.
     * @return "Hello World!" if x greater than y, otherwise return null.
     */
    public static String helloWorld(Integer x, Integer y) {
        String result;
        if(x > y){
            result = 'Hello World!';
        }

        return result; // Replace null with the variable you used to store the result
    }

    /**
     * Checks if a person is eligible to vote based on their age.
     * A person is eligible to vote if they are 18 years old or older.
     * If the age is less than 18, the method will return false.
     * Example: votingEligibility(18) should return true
     * @param age The age of the person.
     * @return true if the person is eligible to vote, false otherwise.
     */
    public static Boolean votingEligibility(Integer age) {
        Boolean result = false;
        if(age >= 18){
            result = true;
        }
        return result; // Replace null with the variable you used to store the result
    }

    /**
     * Finds the maximum of two numbers.
     * If both numbers are equal, it returns that number.
     * Example: findMax(58, 200) should return 200
     * @param num1 The first number.
     * @param num2 The second number.
     * @return The maximum of the two numbers, or null if either number is null.
     */
    public static Integer findMax(Integer num1, Integer num2) {
        Integer largestNum = null;
        if(num1 > num2){
            largestNum = num1;
        }else if(num2 > num1){
            largestNum = num2;
        }else if(num1 == num2){
            largestNum = num1;
        }

        return largestNum; // Replace null with the variable you used to store the result
    }


    /**
     * Checks if a number is positive, negative, or zero.
     * If the number is null, return null.
     * Example: checkNumber(5) should return "Positive"
     * @param a The number to check.
     * @return A string indicating whether the number is "Positive", "Negative", or "Zero", or null if the number is null.
     */
    public static String checkNumber(Integer a) {
        String result = null;
        if(a > 0){
            result = 'Positive';
        }else if(a < 0) {
            result = 'Negative';
        }else if (a == 0){
            result = 'Zero';
        }
        return result; // Replace null with the variable you used to store the result
    }

    /**
     * Checks if a number is even or odd.
     * If the number is null, return null.
     * Example: checkEvenOdd(2) should return "Even"
     * @param a The number to check.
     * @return A string indicating whether the number is "Even" or "Odd", or null if the number is null.
     */
    public static String checkEvenOdd(Integer a) {
        String result;
        

        if (a == null) {
            result = null;
        } else {
            Integer remainder = Math.mod(a, 2);
            System.debug('Remainder: ' + remainder);
    
            if (remainder == 0) {
                result = 'Even';
            } else {
                result = 'Odd';
            }
    
            System.debug('Result: ' + result);
        }
    
        return result; // Replace null with the variable you used to store the result
    }

    /**
     * Checks if a string is empty, null, or contains text.
     * Example: checkString("") should return "Empty"
     * @param a The string to check.
     * @return A string indicating whether the input is "Empty", "Null", or "Contains Text".
     */
    public static String checkString(String a) {
        String result = null;
        if (a == null) {
            result = 'Null';
            System.debug('Result: ' + result);
        } else if (String.isBlank(a)) {
            result = 'Empty';
            System.debug('Result: ' + result);
        } else {
            result = 'Contains Text';
            System.debug('Result: ' + result);
        }
        return result;// Replace null with the variable you used to store the result
    }

    /**
     * Determines the grade based on the score.
     * Grade A if score is greater than or equal to 90.
     * Grade B if score is greater than or equal to 80.
     * Grade C if score is greater than or equal to 70.
     * Grade D if score is greater than or equal to 60.
     * Grade F otherwise.
     * Example: determineGrade(85) should return "B"
     * @param score The score.
     * @return The grade for the given score.
     */
    public static String determineGrade(Integer score) {
        String grade = null;
        if (score > 90) {
            grade = 'A';
        }else if (score > 80) {
            grade = 'B';
        }else if (score > 70) {
            grade = 'C';
        }else if (score > 60) {
            grade = 'D';
        }else{
            grade = 'F';
        }

        return grade; // Replace null with the variable you used to store the result
    }


    /**
     * Sum all the integers up to a given limit.
     * Example: sumUpToLimit(5) should return 15
     * @param intLimit The number up to which integers will be summed.
     * @return The sum of all integers up to the limit.
     */
    public static Integer sumUpToLimit(Integer intLimit) {
        Integer sum = 0;
    
        for (Integer i = 1; i <= intLimit; i++) {
            sum += i;
        }
    
        return sum;
    }

    /**
     * Generate String "Hello World!" three times, with each occurrence separated by a semicolon.
     * Example: returnHelloWorld() should return "Hello World!; Hello World!; Hello World!; "
     * @return The string "Hello World!; Hello World!; Hello World!; "
     */
    public static String returnHelloWorld() {
        // Initialize the result String


        String loopHelloWorld = 'Hello World!; ';

        for(Integer i = 0; i < 2; i++){

            loopHelloWorld = loopHelloWorld + 'Hello World!; ';
        }

        return loopHelloWorld; // Replace null with the variable you used to store the result
    }

    /**
     * Generate a string where the input string is repeated the given number of times, with each
	 * repetition separated by a semicolon. 
     * Do not add a semicolon after the last repetition.
	 * Example: repeatString("Hello World!", 3) should return "Hello World!; Hello World!; Hello World!"
     * @param inputString The string to be repeated.
     * @param repeatCount The number of times the string should be repeated.
     * @return The new string with the inputString repeated repeatCount times.
     */
    public static String repeatString(String inputString, Integer repeatCount) {
        // Initialize the result String


        String resultString = inputString;
        for(Integer i = 1; i < repeatCount; i++){
            resultString = resultString + '; ' + inputString;
        }

        // Return the final result string
        return resultString; // Replace null with the variable you used to store the result
    }

    /**
     * Creates a List of integers and adds the integers 1, 2, and 3 to it.
     * Example: createAndPopulateList() should return [1, 2, 3]
     * @return A List of integers containing the numbers 1, 2, and 3.
     */
    public static List<Integer> createAndPopulateList() {
        // Create a new list of integers
        List<Integer> list1 = new List<Integer>();
        // Add the integers 1, 2, and 3 to the list
        // add 1
        // add 2
        // add 3

        list1.add(1);
        list1.add(2);
        list1.add(3);

        // Return the populated list
        return list1; // Replace null with the variable you used to store the result
    }

    /**
     * Creates a List of integers and adds the integers from 1 to 5. Then it removes the number 3 from the list.
     * Example: createAndRemoveFromList() should return [1, 2, 4, 5]
     * @return A List of integers from 1 to 5, excluding the number 3.
     */
    public static List<Integer> createAndRemoveFromList() {
        // Create a new list of integers and add numbers 1 to 5
        List<Integer> numberList = new List<Integer>{1, 2, 3, 4, 5}; //DO NOT CHANGE

        numberList.remove(2);
        
        // Return the updated list
        return numberList; // Replace null with the variable you used to store the result
    }

    /**
     * Create a list filled with integers based on the input parameter.
     * Example: createIntegerList(5) should return [1, 2, 3, 4, 5] 
     * @param n The last integer in the List.
     * @return A List of integers from 1 to 'n'.
     */
    public static List<Integer> createIntegerList(Integer n) {
        // Create a new list of integers 

        
        List<Integer> list2 = new List<Integer>();

        for(Integer i = 0; i < n; i++){
            list2.add(i + 1);
        }

        

        return list2; // Replace null with the variable you used to store the result
    }

    /**
     * Remove duplicate values from the list of Strings.
     * The returned Set contains the unique strings from the input List.
     * Example: createStringSet(['a', 'b', 'a', 'c']) should return ['a', 'b', 'c']
     * @param inputList The List of strings.
     * @return A Set of unique strings.
     */
    public static Set<String> createStringSet(List<String> inputList) {
        // Create a new Set of strings
        Set<String> stringSet = new Set<String>(inputList);
 

        return stringSet; // Replace null with the variable you used to store the result
    }

    /**
     * Iterates over a list of integers and sums only the positive integers.
     * Example: sumPositiveIntegers() should return 12
     * @return The sum of positive integers from the list.
     */
    public static Integer sumPositiveIntegers() {
        List<Integer> numbers = new List<Integer>{-1, 2, -3, 4, -5, 6}; //DO NOT CHANGE

        Integer totalSum = 0;

        // Loop through the list of integers
            // if the number is negative skip this iteration

            for(Integer i : numbers){
                if(i > 0) {
                    System.debug('Postive Numbers ' + i);
                    totalSum = totalSum + i;
                }

            }
        
            System.debug('Total sum' + totalSum);

        return totalSum; // Replace null with the variable you used to store the result
    }

    /**
     * Iterates over a list of strings and searches for a specific word. Once found, it breaks the loop.
     *  Example: findWordInList("World", ['Hello', 'World', 'Goodbye']) should return 1
     * @param wordToFind The word to find in the list.
     * @param words The list of words to search.
     * @return The position of the word in the list as a string or -1 if the word was not found.
     */
    public static Integer findWordInList(String wordToFind, List<String> words) {
        // The variable to store the index of the word
        Integer storedWordIndex = -1;

        // Loop through the list of words
            // If the current word is the word to find, exit the loop
            for(String str : words){
                if(str.equals(wordToFind)){
                    storedWordIndex = words.indexOf(str);
                    break;
                }
            }

            System.debug('Word in List Index ' + storedWordIndex);

        return storedWordIndex; // Replace null with the variable you used to store the result
    }

    /**
     * Loop through the list of money and adds them up until it accumulates more than 40 and then stops counting.
     * The change values are in cents and the total is to be calculated in dollars.
     * Example: countMoney() should return 48.02
     * @return The total value in dollars, stopped at the point when it exceeds 40 dollars.
     */
    public static Decimal countMoney() {
        // The list of money in the wallet, represented in dollars and cents
        List<Decimal> moneyInWallet = new List<Decimal>{0.50, 10, 3.84, 24.60, 9.08, 50, 4.90}; //DO NOT CHANGE
        Decimal totalSum = 0;

        for(Integer i = 0; i < moneyInWallet.size(); i++){
            if(totalSum < 40){
                totalSum = totalSum + moneyInWallet.get(i);
            }
        }

        return totalSum; // Replace null with the variable you used to store the result
    }

    /**
     * Create a map that has five key-value pairs to the map, where the keys are the names of fruits and the values are their quantities.
     * Example: addItemsToMap() should return "Apples => 5, Oranges => 10, Bananas => 15, Pears => 20, Grapes => 25"
     * @return The Map of fruits and their quantities.
     */
    public static Map<String, Integer> addItemsToMap() {
        // Initialize an empty Map
        Map<String, Integer> fruits = new Map<String, Integer>();

        // Add key-value pairs to the Map
        // add Apples => 5
        // add Oranges => 10
        // add Bananas => 15
        // add Pears => 20
        // add Grapes => 25

        fruits.put('Apples', 5);
        fruits.put('Oranges', 10);
        fruits.put('Bananas', 15);
        fruits.put('Pears', 20);
        fruits.put('Grapes', 25);

        return fruits; // Replace null with the variable you used to store the result
    }

    /**
     * Create a map where the keys are the names of employees and the values are their salaries.
     * Then returns the salary of the employee whose name is specified.
     * Example: getSalary("John Doe") should return 50000
     * Resource: https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_map.htm#apex_System_Map_get
     * @param employeeName The name of the employee.
     * @return The salary of the employee, or null if the employee is not found in the Map.
     */
    public static Integer getSalary(String employeeName) {
        // Initialize a Map

        Map<String, Integer> employees = new Map<String, Integer>();

        // Add key-value pairs to the Map
        // add John Doe => 50000
        // add Jane Smith => 60000
        // add Sam Brown => 55000
        // add Alice Johnson => 65000

        employees.put('John Doe', 50000);
        employees.put('Jane Smith', 60000);
        employees.put('Sam Brown', 55000);
        employees.put('Alice Johnson', 65000);

        // Get the salary of the employee
        Integer salary = employees.get(employeeName);

        // Return the salary of the employee, or null if the employee is not found in the Map
        return salary; // Replace null with the variable you used to store the result
    }

    /**
     * Create a map where the keys are the names of employees and the values are their salaries.
     * Then, iterates over the map and checks if an employee's salary is more than 55000.
     * If it is, add the employee's name to a list of employees that is returned by the method.
     * Remember that a Map is a collection of key-value pairs. Key are a set of unique values, so you can't have duplicate keys. Values are a list of values, so you can have duplicate values.
     * Resource: https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/langCon_apex_loops_for_lists.htm
     * Example: getHighPaidEmployees() should return ['Jane Smith', 'Alice Johnson']
     * @return A list of employee names who have a salary more than 55000.
     */
    public static List<String> getHighPaidEmployees() {
        // Initialize a Map
        Map<String, Integer> employeeSalaries = new Map<String, Integer>();

        // Add key-value pairs to the Map
        // add John Doe => 50000
        // add Jane Smith => 60000
        // add Sam Brown => 55000
        // add Alice Johnson => 65000e

        employeeSalaries.put('John Doe', 50000);
        employeeSalaries.put('Jane Smith', 60000);
        employeeSalaries.put('Sam Brown', 55000);
        employeeSalaries.put('Alice Johnson', 65000);


        // Initialize a list to store the names of high paid employees
        List<String> highestSalaries = new List<String>();

        for(String highestSal : employeeSalaries.keySet()){
            if(employeeSalaries.get(highestSal) > 55000){
                highestSalaries.add(highestSal);
            }
        }

        // Iterate over the Map using a for loop
            // Check if the salary of the employee is more than 55000
                // Add the employee to the list of high paid employees

        // Return the list of high paid employees
        return highestSalaries; // Replace null with the variable you used to store the result
    }

}