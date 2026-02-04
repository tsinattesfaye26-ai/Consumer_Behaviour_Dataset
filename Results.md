# Customer Demographics & Behavior

## Q1 What is the age distribution of our customers, and which age group spends the most on purchases?
Age_Group	| Total_Customers |	Total_Revenue	| Avg_Spend_Per_Customer_usd
|---------|-----------------|----------------|--------------------------|
25-34	    | 19433           | 1156163         | 59.49
45-54	    | 19253           | 1143558         | 59.4
55-64	    | 19336           | 1139841         | 58.95
35-44	    | 19139           | 1139359         | 59.53
18-24	    | 13175           | 789684          | 59.94
65+	        | 9664            | 567462          | 58.72

**Insights:**
- Largest customer base: 25-34 age group, so most users are adults in this range.
- Highest total revenue: 25-34, driven by their large customer numbers.
- Highest average spend per customer: 18-24, meaning younger customers spend more individually.
- Lowest revenue and fewest customers: 65+, showing smaller engagement from older adults.
- Average spend is similar across all age groups (~$58–$60), so revenue mainly depends on customer count.

## Q2 How does gender affect purchase behavior in terms of average purchase amount, item categories, or frequency?
 ### 2.1 Average Spend & Total Volume
 Gender	| Total_Orders | Avg_Transaction_Value_usd | Total_Revenue
 |------|--------------|---------------------------|--------------|
Male    | 68033        | 59.25                     | 4031076
Female  | 31967        | 59.59                     | 1904991
**Insights:**

- Male customers place the most orders (68,033) and generate the highest total revenue ($4,031,076).
- Female customers spend slightly more per transaction ($59.59 vs $59.25) but total revenue is lower due to fewer orders.
- Revenue is mainly driven by the number of orders, not per-transaction spend.
### 2.2  Item Categories by Gender

Gender | Category     | Number_of_Purchases | Category_Revenue
|------|--------------|---------------------|----------------|
Female | Clothing     | 14245               | 847094
Female | Accessories  | 10228               | 611244
Female | Footwear     | 4889                | 289914
Female | Outerwear    | 2605                | 156739
Male   | Clothing     | 30495               | 1807697
Male   | Accessories  | 21399               | 1264904
Male   | Footwear     | 10437               | 620926
Male   | Outerwear    | 5702                | 337549

**Insights:**
- Clothing is the top-selling category for both genders
- Male customers dominate in both purchases and revenue across all categories
- Accessories are the second most popular category for both genders
- Outerwear has the fewest purchases and revenue for both males and females
- 
### 2.3  Purchase Frequency Breakdown

Gender | Frequency_of_Purchases | Count
|------|------------------------|------|
Female | Every 3 Months         | 4889
Female | Annually               | 4707
Female | Quarterly             | 4644
Female | Monthly               | 4471
Female | Bi-Weekly             | 4471
Female | Weekly                | 4416
Female | Fortnightly           | 4369
Male   | Every 3 Months         | 10279
Male   | Annually               | 10062
Male   | Quarterly             | 9739
Male   | Bi-Weekly             | 9727
Male   | Monthly               | 9478
Male   | Weekly                | 9426
Male   | Fortnightly           | 9322

**Insights:**
- Most customers, both male and female, purchase every 3 months
- Male customers make more purchases than females across all frequencies
- Purchase frequency declines gradually from every 3 months to fortnightly, showing consistent but moderate buying behavior

## Q3 Which geographical locations generate the highest revenue and which have the most frequent shoppers?
Location        | Total_Orders | Total_Revenue | Avg_Order_Value | High_Frequency_Shoppers
|---------------|--------------|---------------|-----------------|------------------------|
Idaho           | 2434         | 144524        | 59.38           | 1026
Illinois        | 2406         | 142709        | 59.31           | 997
Montana         | 2401         | 142594        | 59.39           | 1022
California      | 2389         | 141424        | 59.2            | 1032
Nebraska        | 2318         | 139118        | 60.02           | 982
Alabama         | 2367         | 137040        | 57.9            | 985
Maryland        | 2269         | 134437        | 59.25           | 966
Minnesota       | 2220         | 133904        | 60.32           | 900
Delaware        | 2251         | 133316        | 59.23           | 930
Nevada          | 2207         | 131207        | 59.45           | 934
Vermont         | 2202         | 130324        | 59.18           | 947
New York        | 2191         | 128969        | 58.86           | 968
Louisiana       | 2154         | 127442        | 59.17           | 860
North Dakota    | 2112         | 125570        | 59.46           | 872
Connecticut     | 2057         | 124698        | 60.62           | 873
Indiana         | 2099         | 124131        | 59.14           | 804
Missouri        | 2070         | 124007        | 59.91           | 855
New Mexico      | 2065         | 122834        | 59.48           | 830
Kentucky        | 2018         | 122295        | 60.6            | 862
Arkansas        | 2075         | 121911        | 58.75           | 883
West Virginia   | 2065         | 121373        | 58.78           | 898
North Carolina  | 2025         | 121106        | 59.81           | 807
Georgia         | 2049         | 120599        | 58.86           | 821
Mississippi     | 2031         | 119470        | 58.82           | 804
Texas           | 1997         | 118749        | 59.46           | 854
Ohio            | 1992         | 118490        | 59.48           | 855
Maine           | 1961         | 117822        | 60.08           | 827
Colorado        | 1922         | 115309        | 59.99           | 822
Michigan        | 1943         | 115003        | 59.19           | 851
Tennessee       | 1920         | 113790        | 59.27           | 799
Virginia        | 1897         | 113718        | 59.95           | 795
Oregon          | 1912         | 112918        | 59.06           | 807
South Carolina  | 1908         | 112617        | 59.02           | 807
Wisconsin       | 1906         | 112246        | 58.89           | 787
Utah            | 1886         | 111686        | 59.22           | 790
Washington      | 1864         | 111126        | 59.62           | 769
Oklahoma        | 1857         | 110222        | 59.35           | 723
Alaska          | 1810         | 108055        | 59.7            | 779
New Hampshire   | 1812         | 107912        | 59.55           | 761
Massachusetts   | 1802         | 107896        | 59.88           | 745
Pennsylvania    | 1819         | 107171        | 58.92           | 743
Iowa            | 1803         | 106722        | 59.19           | 777
Wyoming         | 1800         | 105192        | 58.44           | 723
South Dakota    | 1761         | 103390        | 58.71           | 771
New Jersey      | 1737         | 102617        | 59.08           | 687
Florida         | 1703         | 99791         | 58.6            | 699
Hawaii          | 1690         | 99213         | 58.71           | 684
Rhode Island    | 1618         | 97901         | 60.51           | 662
Arizona         | 1611         | 95922         | 59.54           | 713
Kansas          | 1594         | 95587         | 59.97           | 643

**Insights:**
- Top states by orders and revenue: Idaho, Illinois, Montana, California
- Highest average order value: Connecticut ($60.62) and Kentucky ($60.6)
- High-frequency shoppers: California leads (1,032), showing strong engagement
- Lowest engagement: Kansas, Hawaii, Rhode Island, with lower orders and fewer high-frequency shoppers
- Revenue generally correlates with number of orders and high-frequency shoppers

#  Product & Category Analysis

##  Q4 What are the top-selling products and top-performing categories?

### 4.1 Top-Performing Categories (By Revenue)
Category     | Total_Units_Sold | Total_Revenue | Avg_Unit_Price
|------------|------------------|---------------|---------------|
Clothing     | 44740            | 2654791       | 59.34
Accessories  | 31627            | 1876148       | 59.32
Footwear     | 15326            | 910840        | 59.43
Outerwear    | 8307             | 494288        | 59.5
**Insights:**
- Clothing is the top-selling category in both units and revenue.
- Accessories come second in both units sold and revenue.
- Outerwear has the lowest units sold and revenue.
- Average unit price is similar across all categories (~$59), meaning revenue is driven by units sol
  
### 4.2  Top-Selling Products (By Volume)

Item_Purchased | Category | Units_Sold | Total_Revenue
|--------------|----------|------------|--------------|
Blouse         | Clothing | 2063       | 120804
Jewelry        | Clothing | 1970       | 115855
Pants          | Clothing | 1938       | 115933
Coat           | Clothing | 1935       | 114664
Shirt          | Clothing | 1926       | 114996
Dress          | Clothing | 1923       | 114481
Handbag        | Clothing | 1874       | 110040
Sweater        | Clothing | 1871       | 111781
Sunglasses     | Clothing | 1868       | 111318
Jacket         | Clothing | 1855       | 109441

**Insights:**
- Blouse is the top-selling item in units and revenue.
- Jewelry and Pants follow closely in revenue.
- Most popular items are Clothing-related, showing this category dominates sales.
- Revenue differences are mainly driven by small differences in units sold.

### 4.3  The "Product Stars" (Highest Rated & Best Selling)

Item_Purchased | Units_Sold | Average_Rating
|--------------|------------|---------------|
Jacket         | 4192       | 3.82
Hat            | 3878       | 3.82
Sweater        | 4217       | 3.81
Handbag        | 4137       | 3.81
Skirt          | 3994       | 3.81
Hoodie         | 3843       | 3.81
Shoes          | 3754       | 3.81
Backpack       | 3637       | 3.81
Jewelry        | 4355       | 3.8
Pants          | 4349       | 3.8

**Insights:**
- Jacket and Hat have the highest average ratings (3.82)
- Most items have very similar ratings (3.8–3.82), indicating consistent customer satisfaction
- Jewelry and Pants have the highest units sold but slightly lower average ratings (3.8)

## Q5 How does the season affect product sales? (e.g., summer vs winter purchases)
### 5.1  Overall Seasonal Performance
Season  | Total_Orders | Total_Revenue | Avg_Spend_Per_Order_usd
|-------|---------------|--------------|------------------------|
Spring  | 25712        | 1524455       | 59.29
Winter  | 25083        | 1493443       | 59.54
Fall    | 25001        | 1485560       | 59.42
Summer  | 24204        | 1432609       | 59.19

**Insights:**
- Spring has the highest number of orders and total revenue
- Winter has the highest average spend per order ($59.54)
- Summer has the lowest orders, revenue, and slightly lower average spend
- Revenue is mostly driven by order volume, as average spend is similar across seasons

### 5.2  Category Performance by Season (The "Seasonal Deep Dive")

Season  | Category     | Units_Sold | Revenue
|-------|---------------|-----------|--------|
Fall    | Clothing     | 11190      | 663221
Fall    | Accessories  | 7890       | 469908
Fall    | Footwear     | 3816       | 226656
Fall    | Outerwear    | 2105       | 125775
Spring  | Clothing     | 11512      | 683129
Spring  | Accessories  | 8155       | 482596
Spring  | Footwear     | 3906       | 231138
Spring  | Outerwear    | 2139       | 127592
Summer  | Clothing     | 10828      | 640866
Summer  | Accessories  | 7709       | 455134
Summer  | Footwear     | 3719       | 221302
Summer  | Outerwear    | 1948       | 115307
Winter  | Clothing     | 11210      | 667575
Winter  | Accessories  | 7873       | 468510
Winter  | Footwear     | 3885       | 231744
Winter  | Outerwear    | 2115       | 125614

**Insights:**
- Clothing is the top-selling category in all seasons
- Accessories are second in sales and revenue for all seasons
- Outerwear consistently sells the least in all seasons
- Spring leads in both units sold and revenue across most categories
  
 ## Q6 Are certain colors or sizes more popular than others for specific categories?
 Category    | Color      | Size | Units_Sold | Total_Revenue | Popularity_Rank
 |-----------|------------|------|------------|---------------|----------------|
Accessories | Cyan       | M    | 668        | 40042         | 1
Clothing    | Yellow     | M    | 927        | 53316         | 1
Footwear    | Olive      | M    | 341        | 20027         | 1
Outerwear   | Violet     | M    | 181        | 10852         | 1
Accessories | Olive      | M    | 664        | 39051         | 2
Accessories | Teal       | M    | 664        | 39250         | 2
Clothing    | Olive      | M    | 908        | 53157         | 2
Footwear    | Silver     | M    | 318        | 18469         | 2
Outerwear   | Yellow     | M    | 180        | 10764         | 2
Clothing    | Teal       | M    | 892        | 53643         | 3
Footwear    | Teal       | M    | 315        | 18779         | 3
Outerwear   | Olive      | M    | 174        | 10715         | 3
...
Accessories | Indigo     | XL   | 104        | 5893          | 100
Clothing    | Charcoal   | XL   | 163        | 9449          | 100
Footwear    | Peach      | XL   | 44         | 2737          | 100
Outerwear   | Turquoise  | XL   | 24         | 1343          | 100
**Insights:**
- Top-selling items by popularity rank 1–3 are mainly Accessories, Clothing, and Footwear in Medium size.
- Colors like Cyan, Yellow, Olive, Teal appear frequently among top sellers.
- Large (L, XL) and Small (S) sizes generally sell less than Medium (M), indicating M is the most demanded size.
- Outerwear items consistently have lower units sold compared to Accessories and Clothing.
- Revenue largely follows units sold, popularity correlates with both units and revenue.
 # Purchase Patterns
## Q7 How does purchase frequency (monthly, bi-weekly, annually) relate to the total spending of a customer?
## Q8 Is there a correlation between previous purchases and current purchase amount?
## Q9 Do subscribed customers spend more or purchase more frequently than non-subscribed customers?
# Promotions & Discounts
## Q10 How effective are discounts or promo codes in increasing purchase amounts or frequency?
## Q11 Do certain payment methods correlate with higher purchase amounts or repeated purchases?
## Q12 Are customers who use free shipping or faster shipping options spending more on average?
#  Customer Feedback & Engagement
 ## Q13 How does review rating correlate with repeat purchases or purchase amount?
## Q14 Are there particular products or categories that consistently receive low or high ratings?
## Q15 Can we predict the likelihood of a customer making a repeat purchase based on their first purchase behavior, subscription status, and purchase amount?
