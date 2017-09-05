package com.company;

/**
 * Created by aleksandrakorolczuk1 on 2017-09-05.
 */
public class Board {

    // we dont need object player, because char X or O indicates who is playing.
    // so by changing player we change the sign.

    /*  user input:
-------------
|  11 | 12  | 13  |
-------------
| 21  | 22  |  23 |
-------------
| 31  | 32  | 33  |
-------------

code:
[00[01][02]
[10][11][12]
[20][21][22]


     */


    private  int row = 3;
    private int col = 3;
    //Board with 3 rows and 3 columns
    private char[][] gameboard;
    private char currentPlayer;


    // konstruktor for the board game. board will have 2 information - currend board, current player and also we can perform
    // method to start a game:
    public Board() {
        gameboard = new char[row][col];
        currentPlayer = 'x';
        startGame();
    }

    //getter for current player
    public char getCurrentPlayer()
    {
        return currentPlayer;
    }

    //if x is playing, o will be next and the other way.  we start with currentPlayer = 'x' in the constructor, so:
    public void changePlayer() {
        if (currentPlayer == 'x') {
            currentPlayer = 'o';
        }
        else if (currentPlayer == 'o'){
            currentPlayer = 'x';
        }
    }
    public void startGame() {
    // gameboard has i rows and j columns. every row and column will be empty by default.
        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 3; j++) {
                gameboard[i][j] = ' '; // empty cell!!
            }
        }
    }

    public void printCurrentStatus() {
        System.out.println("-------------"); // just the top tine
        //looping through the board:
        for (int i = 0; i < 3; i++) { // 3 rows
            System.out.print("| "); // printing just the first | on the left
            for (int j = 0; j < 3; j++) {
                System.out.print(gameboard[i][j] + " | "); // addiing 3 more cells
            }
        System.out.println(); // new line
            System.out.println("-------------"); // bottom line
        }
    }

    public boolean play(int r, int c) {
        if (gameboard[r][c] == ' ') { //if a specific cell[row][col] is empty, then:
            gameboard[r][c] = currentPlayer; // we can put sign of a current player there!
            return true;
        }
    // once the we 'take the cell', method return false, to the current player is not playing at the moment
        return false;
    }

    // if we find any empty cell then the board is not full yet, so there is no tie.
    public boolean isFull() {
        boolean full = true;
        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 3; j++) {
                if (gameboard[i][j] == ' ') {
                    full = false;
                }
            }
        }
        return full;
    }

    // finding the same signs XXX or OOO in 3 cells we pass as parameter, random cells for now
    public boolean sameSign(char sign1, char sign2, char sign3) {
        if (sign1 != ' ' && sign2 != ' ' && sign3 != ' ') { // if they are not empty
            if (sign1 == sign2 && sign2 == sign3) {
                return true;
            }
        }
        return false;
    }

    public boolean winner() {
        //first, we check all row [i] cells, if they are the same- sameSign method:
        for (int i = 0; i < 3; i++) { //
            if (sameSign(gameboard[i][0], gameboard[i][1], gameboard[i][2]) == true) {
                return true;
            }
        }
        // now let's check columns:
        for (int j = 0; j < 3; j++) {
            if (sameSign(gameboard[0][j], gameboard[1][j], gameboard[2][j]) == true) {
                return true;
            }
        }
        // now across 1 option
        if (sameSign(gameboard[0][0], gameboard[1][1], gameboard[2][2]) == true)
            return true;
        // accross 2 option
        if (sameSign(gameboard[0][2], gameboard[1][1], gameboard[2][0]) == true)
            return true;

        return false;
    }
//
//    code:
//            [00[01][02]
//            [10][11][12]
//            [20][21][22]




}