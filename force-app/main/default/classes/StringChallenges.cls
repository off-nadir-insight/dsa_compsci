public with sharing class StringChallenges {
    public class StringChallengesException extends Exception {}
    /**
     * Given a string return the same string with all letters in upper case.
     * The string may contain integers and punctuation. They should be ignored.
     * @param str the string to upper case
     * @return the string in upper case
     */
    private static final Integer LOWER_TO_UPPER_OFFSET = -32;
    private static final Integer UPPER_TO_LOWER_OFFSET = 32;
    private static final Integer ASCII_LOWER_A = 97;
    private static final Integer ASCII_LOWER_Z = 122;
    private static final Integer ASCII_UPPER_A = 65;
    private static final Integer ASCII_UPPER_Z = 90;
    
    public static String toUpper(String str) {
        List<Integer> argumentCharactersIntList = str.getChars();
        List<Integer> upperCharIntsList = new List<Integer>();

        for (Integer charInt : argumentCharactersIntList) {
            if (isLowerCaseCharInt(charInt)){
                Integer upperCharInt = makeUpperCharInt(charInt);
                upperCharIntsList.add(upperCharInt);
            } else {
                upperCharIntsList.add(charInt);
            }
        }
        String outputStringMadeUpper = String.fromCharArray(upperCharIntsList);
        return outputStringMadeUpper;
    }

    private static Integer makeUpperCharInt(Integer inputChar) {
        if (inputChar >= ASCII_LOWER_A && inputChar <= ASCII_LOWER_Z) {
            return inputChar + LOWER_TO_UPPER_OFFSET;
        } else {
            return inputChar;
        }
    }

    private static Boolean isLowerCaseCharInt(Integer inputChar) {
        return inputChar >= ASCII_a && inputChar <= ASCII_z;
    }

    /**
     * Given a string return the same string with all letters in lower case.
     * The string may contain integers and punctuation. They should be ignored.
     * @param str the string to lower case
     * @return the string in lower case
     */
    public static String toLower(String str) {
        //TODO: Implement
        throw new StringChallengesException('Not Implemented');
    }

}