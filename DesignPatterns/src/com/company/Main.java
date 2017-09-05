package com.company;

import java.util.Scanner;

public class Main {



    public static void main(String[] args) {



            System.out.println("WELCOME TO TIC TAC TOE!");

            Scanner scan = new Scanner(System.in);
            Board gameboard = new Board();
            gameboard.startGame();
            //3 options: we play until there is no winner or tie.:

            while (!gameboard.winner() && !gameboard.isFull()) {
                System.out.println("The current board status is:");
                gameboard.printCurrentStatus();

                System.out.println("Player " + gameboard.getCurrentPlayer() + ", make your move");
                int row;
                int col;
                // to prevent user input bigger that 4 and program to crash, we put the code in try/catch block:
                try {
                    row = scan.nextInt() - 1; //input 1-3, index 0-2
                    col = scan.nextInt() - 1;
                    while (gameboard.play(row, col) == false) {
                        // get input until we mark down our a cell. if user input cell address that is taken, repeat command
                        // "make your move".
                        // when the cell is taken, change the player.

                        System.out.println("Player " + gameboard.getCurrentPlayer() + ", make your move");
                        row = scan.nextInt() - 1;
                        col = scan.nextInt() - 1;
                    }
                    gameboard.changePlayer();
                } catch (ArrayIndexOutOfBoundsException e) {
                    System.out.println("wrong input!!!! Please try again.");
                }
            }

            // board is full but no winner - tie:
            if (gameboard.isFull() && !gameboard.winner()) {
                System.out.println("No winner. Tie");
            }

            // winner:

            else {
                System.out.println("The current board status is:");
                // print the winner board
                gameboard.printCurrentStatus();
                gameboard.changePlayer();
                System.out.println(gameboard.getCurrentPlayer() + " player won");
            }
        }
    }

