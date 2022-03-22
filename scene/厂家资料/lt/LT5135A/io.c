OUT0:
echo 1 > /sys/class/gpio/gpio115/value   /*开 */
echo 0 > /sys/class/gpio/gpio115/value   /*闭 */

OUT1:
echo 1 > /sys/class/gpio/gpio114/value   /*开 */
echo 0 > /sys/class/gpio/gpio114/value   /*闭 */

IN0:
cat /sys/class/gpio/gpio117/value

IN1:
cat /sys/class/gpio/gpio20/value
