let styles = ["James", "Brennie"];
styles.push("Robert");
if (styles.length % 2 !== 0) {
    styles[styles / 2] = "Calvin";
}
console.log(styles.slice(0, 1));
styles.unshift("Rose", "Regal");
