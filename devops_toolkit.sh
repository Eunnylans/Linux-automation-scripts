#!/bin/bash

while true; do
    echo "=============================="
    echo "   DevOps Toolkit Menu"
    echo "=============================="
    echo "1. Check Disk Usage"
    echo "2. Check Running Processes"
    echo "3. Check Logged-in Users"
    echo "4. Exit"
    echo "=============================="

    read -p "Enter your choice (1-4): " choice

    case $choice in
        1)
            echo "Disk Usage:"
            df -h
            ;;
        2)
            echo "Running Processes:"
            ps aux | head -10
            ;;
        3)
            echo "Logged-in Users:"
            who
            ;;
        4)
            echo "Exiting DevOps Toolkit. Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid option. Please choose between 1 and 4."
            ;;
    esac

    echo
    read -p "Press Enter to return to menu..." dummy
done
