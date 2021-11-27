summary(Data)

#身高体重分布图
plot(Data$身高, Data$体重,
     xlab = "身高/cm",ylab = "体重/kg",
     main = "身高体重分布图",
     col = "#69b3a2",
     pch = 16)

#男女比例图
x <- table(Data$性别)
percent <- round(100*x/sum(x),2) 
percent <- paste(percent, "%", sep = "")  
pie(x,labels = percent,
    main = "男女比例图",
    edges = 600,radius = 6,
    col = c("skyblue","pink"))

legend("topright",
       legend,
       fill = c("skyblue","pink"),
       names(x), 
       cex = 0.7)

#星座分布图
y <- table(Data$星座)
barplot(height = y, width = 0.8,
        names.arg = names(y),
        main = "星座分布图",
        xlab = "星座",
        ylab = "人数/人",
        col = "skyblue",
        border = "blue")

#籍贯分布图
z <- table(Data$籍贯)
z1 <- paste(z,"人",sep="")
pie(z,labels = z1,
    main = "籍贯分布图",
    edges = 1000,radius = 6,
    clockwise = T)

#年龄分布图
age <- table(Data$年龄)
names(age) <- as.data.frame(age)[,1]
ages <- paste(age,"人",sep="")
names(age) <- paste(names(age),"岁",sep="")
pie(age,labels = ages,
    main = "年龄分布图",
    edges = 1000,radius = 5,
    col = c("skyblue","lightskyblue","deepskyblue","powderblue","skyblue4"),
    clockwise = T)

legend("right",
       legend,
       fill = c("skyblue","lightskyblue","deepskyblue","powderblue","skyblue4"),
       names(age), 
       cex = 0.6)
