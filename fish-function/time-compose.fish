function time-compose
    for i in (seq 10)
        set start (python -c "import time; print(str(int(round(time.time() * 1000))))")
        time docker-compose -f $argv[1] up --build > /dev/null
        set end (python -c "import time; print(str(int(round(time.time() * 1000))))") 
        set duration (math $end - $start)
        echo $duration >> result_$argv[1].txt
    end
end
