def cifr(x, y, radius, level):
    if level == 0:
        return 
    drawCircle(x, y, radius) 
    num = 6
    for i in range(num):
        angle = (2 * PI / num) * i
        newX = x + cos(angle) * radius * 1.5
        newY = y + sin(angle) * radius * 1.5
        cifr(newX, newY, radius / 2, level - 1)
