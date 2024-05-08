package Programacion.CodeWars.PracticasEntregar;

public class CW02MazeRunner {
    public static String walk(int[][] maze, String[] directions) {
        int[] currentPosition = findStartPosition(maze);
        int remainingSteps = directions.length;

        for (String direction : directions) {
            remainingSteps--;
            switch (direction) {
                case "N":
                    currentPosition[0]--;
                    break;
                case "S":
                    currentPosition[0]++;
                    break;
                case "W":
                    currentPosition[1]--;
                    break;
                case "E":
                    currentPosition[1]++;
                    break;
                default:
                    throw new IllegalArgumentException("Invalid direction");
            }

            if (!isValidPosition(currentPosition, maze)) {
                return "Dead";
            }

            int currentCellValue = maze[currentPosition[0]][currentPosition[1]];
            if (currentCellValue == 3) {
                return "Finish";
            } else if (currentCellValue == 1) {
                return "Dead";
            }
        }

        return remainingSteps >= 0 ? "Lost" : "Finish";
    }

    private static int[] findStartPosition(int[][] maze) {
        int[] position = new int[2];
        for (int i = 0; i < maze.length; i++) {
            for (int j = 0; j < maze[i].length; j++) {
                if (maze[i][j] == 2) {
                    position[0] = i;
                    position[1] = j;
                    return position;
                }
            }
        }
        throw new IllegalArgumentException("No start position found");
    }

    private static boolean isValidPosition(int[] position, int[][] maze) {
        int x = position[0];
        int y = position[1];
        return x >= 0 && x < maze.length && y >= 0 && y < maze[0].length;
    }

    public static void main(String[] args) {
        int[][] maze = {
                { 1, 1, 1, 1, 1, 1, 1 },
                { 1, 0, 0, 0, 0, 0, 3 },
                { 1, 0, 1, 0, 1, 0, 1 },
                { 0, 0, 1, 0, 0, 0, 1 },
                { 1, 0, 1, 0, 1, 0, 1 },
                { 1, 0, 0, 0, 0, 0, 1 },
                { 1, 2, 1, 0, 1, 0, 1 } };

        System.out.println(CW02MazeRunner.walk(maze, new String[] { "N", "N", "N", "N", "N", "E", "E", "E", "E", "E" }));
    }

}
