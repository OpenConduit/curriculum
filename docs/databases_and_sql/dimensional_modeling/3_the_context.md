In the previous course, we looked at the world through the lens of **Set Theory**. We treated data as abstract collections of things—tuples inside relations. We were concerned with logical truth.

Now, we have to actually *build* something.

In the engineering world of data warehousing, we stop calling them "relations." We split that concept into two distinct architectural components: **Dimensions** and **Facts**.

If you look at a raw database, these two look identical. They are both tables. They both have columns and rows. But functionally? They are opposites. They represent the two sides of the human brain: the descriptive, storytelling side (Dimensions) and the mathematical, counting side (Facts).

We are going to start with the storytellers.

## 3.1 The "Noun" Tables
Im