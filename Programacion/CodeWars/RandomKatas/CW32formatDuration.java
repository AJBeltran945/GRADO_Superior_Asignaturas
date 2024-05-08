package Programacion.CodeWars.RandomKatas;

public class CW32formatDuration {
    public static String formatDuration(int seconds) {
        if (seconds == 0) return "now";

        int[] units = {31536000, 86400, 3600, 60, 1};
        String[] unitNames = {"year", "day", "hour", "minute", "second"};
        StringBuilder result = new StringBuilder();

        for (int i = 0; i < units.length; i++) {
            int unitCount = seconds / units[i];
            if (unitCount > 0) {
                if (result.length() > 0) {
                    result.append(", ");
                }
                result.append(unitCount).append(" ").append(unitNames[i]);
                if (unitCount > 1) {
                    result.append("s");
                }
                seconds -= unitCount * units[i];
            }
        }

        String formattedResult = result.toString();
        if (formattedResult.contains(", ")) {
            int lastIndex = formattedResult.lastIndexOf(", ");
            formattedResult = formattedResult.substring(0, lastIndex) + " and " + formattedResult.substring(lastIndex + 2);
        }
        return formattedResult;
    }
}
