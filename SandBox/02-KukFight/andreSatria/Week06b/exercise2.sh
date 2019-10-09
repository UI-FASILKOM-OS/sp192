head -n 14105 < apache.txt | tail -n +335 > temp.txt

TO_FILE="unique.txt"

awk '{
    printf("%s\n", $1);
}' temp.txt | sort | uniq > "${TO_FILE}"

echo "Finished"