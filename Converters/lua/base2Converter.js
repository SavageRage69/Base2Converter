function toBase2(val) {
    const ar=[];
    while (val!=0) {
        if(val%2==0) {
            ar.push("0");
            val/=2;
        } else {
            ar.push("1");
            val=(val-1)/2;
        }
    }
    return ar.toString().replace(/,/g,'').split("").reverse().join("");
}

// so far only the Base10 -> Base2 function has been created, its also really slow.
