
# Danny's Diner Case Study
![](https://github.com/krishnachavan01/images/blob/main/case%20study.jpg?raw=true)
## Introduction
Danny seriously loves Japanese food so in the beginning of 2021, he decides to embark upon a risky venture and opens up a cute little restaurant that sells his 3 favourite foods: sushi, curry and ramen.

Danny’s Diner is in need of your assistance to help the restaurant stay afloat - the restaurant has captured some very basic data from their few months of operation but have no idea how to use their data to help them run the business.
## Problem Statement
Danny wants to use the data to answer a few simple questions about his customers, especially about their visiting patterns, how much money they’ve spent and also which menu items are their favourite. Having this deeper connection with his customers will help him deliver a better and more personalised experience for his loyal customers.

He plans on using these insights to help him decide whether he should expand the existing customer loyalty program - additionally he needs help to generate some basic datasets so his team can easily inspect the data without needing to use SQL.
Danny has provided you with a sample of his overall customer data due to privacy issues - but he hopes that these examples are enough for you to write fully functioning SQL queries to help him answer his questions!

Danny has shared with you 3 key datasets for this case study:

- sales
- menu
- members
# Entity relationship diagram
![](https://github.com/krishnachavan01/images/blob/main/entity%20relationship.jpg?raw=true)

- [Access dataset here](https://www.db-fiddle.com/f/2rM8RAnq7h5LLDTzZiRWcd/138)

# Case Study Questions 
- What is the total amount each customer spent at the restaurant?
- How many days has each customer visited the restaurant?
- What was the first item from the menu purchased by each customer?
- What is the most purchased item on the menu and how many times was it purchased by all customers?
- Which item was the most popular for each customer?
- Which item was purchased first by the customer after they became a member?
- Which item was purchased just before the customer became a member?
- What is the total items and amount spent for each member before they became a member?
- If each $1 spent equates to 10 points and sushi has a 2x points multiplier - how many points would each customer have?

# Analysis insights

- What is the total amount each customer spent at the restaurant?

![](https://github.com/krishnachavan01/images/blob/main/q1.jpg?raw=true)

![](https://github.com/krishnachavan01/images/blob/main/s1.jpg?raw=true)

**Customer A spent $76, customer B spent $74, and customer C spent $36**.

- How many days has each customer visited the restaurant?

![](https://github.com/krishnachavan01/images/blob/main/q2.jpg?raw=true)

![](https://github.com/krishnachavan01/images/blob/main/s2.jpg?raw=true)

Customer A visited the restaurant 4 times, Customer B visited the restaurant 6 times, and Customer C visited the restaurant twice.

-  What was the first item from the menu purchased by each customer?

![](https://github.com/krishnachavan01/images/blob/main/q3.jpg?raw=true)

![](https://github.com/krishnachavan01/images/blob/main/s3.jpg?raw=true)

On the first visit, Customer A ordered both Curry and Sushi while Customer B ordered Curry and Customer C ordered Ramen.

- What is the most purchased item on the menu and how many times was it purchased by all customers?

![](https://github.com/krishnachavan01/images/blob/main/q4.jpg?raw=true)
![](https://github.com/krishnachavan01/images/blob/main/s4.jpg?raw=true)

The most purchased item on the menu overall was Ramen as it had 8 total purchases. Both Customers A and C purchased Ramen 3 times while Customer B purchased Ramen twice.

- Which item was the most popular for each customer?

![](https://github.com/krishnachavan01/images/blob/main/q5.jpg?raw=true)
![](https://github.com/krishnachavan01/images/blob/main/s5.jpg?raw=true)

Both Customer A and C's most purchased menu item was Ramen. Customer B purchased all 3 menu items an equal number of times

- Which item was purchased first by the customer after they became a member?

![](https://github.com/krishnachavan01/images/blob/main/q6.jpg?raw=true)
![](https://github.com/krishnachavan01/images/blob/main/s6.jpg?raw=true)

After becoming a member, Customer A's first purchase was Ramen while Customer B's first purchase was Sushi.

- Which item was purchased just before the customer became a member?

![](https://github.com/krishnachavan01/images/blob/main/q7.jpg?raw=true)
![](https://github.com/krishnachavan01/images/blob/main/s7.jpg?raw=true)

Before becoming a member, Customer A purchased both Sushi and Curry while Customer B only purchased Sushi.

- What is the total items and amount spent for each member before they became a member?

![](https://github.com/krishnachavan01/images/blob/main/q8.jpg?raw=true)
![](https://github.com/krishnachavan01/images/blob/main/s8.jpg?raw=true)

Before becoming a member, Customer A purchased 2 items and spent $25 total. Customer B purchased 3 items and spent $40 prior to becoming a member.

- If each $1 spent equates to 10 points and sushi has a 2x points multiplier - how many points would each customer have?

![](https://github.com/krishnachavan01/images/blob/main/q9.jpg?raw=true)
![](https://github.com/krishnachavan01/images/blob/main/s9.jpg?raw=true)

Customer A would have 860 points, Customer B would have 940 points, and Customer C would have 360 points.


