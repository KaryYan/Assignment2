<img align="left" width="100" height="100" src=pic/green_p.png>

# Toronto Parking Infraction Records    
 
### 💌 To understand parking different infractions and fines



## To understand different infractions and fines


<img align="center" width="1000" height="500" src=pic/fine.jpeg>

## 📃 Project Description
This project aims to extract useful information from the parking infraction csv files available on the [City of Toronto portal](https://open.toronto.ca/dataset/parking-tickets/). The focus on this project is "park on private property". Through this project, you will be able to analyze any parking ticket files on the portal and know more about the consequences of parking on private property. Positional parameter has been set up in the script to make it easier for you to run any csv file in your computer!

## 🔍 Usages
This project can be used to extract the following information from the parking ticket csv files:
- All types of parking infractions.
- Information about the fine: minimum, maximum and mean fine amounts across all parking infractions.
- Specifically for "park on private property", a new csv file would be generated to show what is the fine, and where the tickets were issued.

For example, through the following code, you would be able to see the mean of fine amount among all the parking infraction in the parking ticket csv file of your choice:

In your terminal, when the script and csv file are both in your working directory, you can run the script as following:
```
./Yongran_Assignment1.sh (you csv file)
```

You will see the mean of the fine amounts being printed as a result of calling the following function in the script:
```
function mean {
	cat $csv_file | awk -F',' '{sum+=$5} END {print "Mean of set fine amount is " sum/NR}'
} 
```

## ✅ How to get staretd? (It's easy!)
- Step 1, download the following files:
  - A parking ticket csv file that you are interested in from [City of Toronto portal](https://open.toronto.ca/dataset/parking-tickets/) 
  - The script: Yongran_Assignmen1.sh

❣️ To make things easier, download them into the **same folder**.

- Step 2, open the terminal and browse to your working directory.

- Step 3, authorize the script:
```
chmod 775 Yongran_Assignmen1.sh
```

- Step 4, run the script with the csv file:
``` 
./Yongran_Assignment1.sh (you csv file)
```

✨ Now you should see all the parking infraction types and the mean, max and min fine amounts in the files. In addition, be sure to check your folder for the new csv file to know more about the "park on private property" part!

## 💪🏻 Support
If you would need any support, please post it on [Issues](https://github.com/KaryYan/Assignment2/issues) and I will reply to you as soon as possible :)

## 💻 Contributing
If you would like to contribute to the project:
- Initiate a [pull request](https://github.com/KaryYan/Assignment2/pulls) and explain what feature has been improved.
- In order for the contribution to be accepted, the code should be easy to understand with clear comments.

## 🏖 Reference
1. https://davidwells.io/snippets/how-to-align-images-in-markdown (how to align pictures)

