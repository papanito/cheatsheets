# for file in Redirection operators are evaluated left-to-right. You wrongly put 2>&1 first, which points 2 to the same place, as 1 currently is pointed to which is the local terminal screen, because you have not redirected 1 yet. You need to do either of the following:

2>/dev/null 1>/dev/null google-chrome &

# Or

2>/dev/null 1>&2 google-chrome &

