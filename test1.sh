
#!/bin/bash
ls /nonexistent_directory | grep "test"
echo "ls status: " ${PIPESTATUS[0]}  # Exit status of `ls`
echo "grep status: " ${PIPESTATUS[1]}  # Exit status of `grep`
