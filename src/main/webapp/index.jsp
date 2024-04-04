<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>JSP-Hello World</title>
</head>

<body>

    <p>${error}</p>
    <form method = "post" action="calc">

        <label for = "Principal-amount">Principal Amount:</label>
        <input type="number" id="Principal-amount" name="principalAmt" value=${principal}>

        <label for = "interest">Interest Percentage:</label>
        <input type="number" id="interest" min="1" max="100" name = "interestPerc" value=${interest}>

        <label for = "years"># of Years:</label>
        <input type="number" id="years" min="1" name="years" value=${years}>

        <label for = "compoundingPeriod">Times Per Year:</label>
        <input type="number" id="compoundingPeriod" min="1" max="12" name="compoundingPeriod" value=${compoundingPeriod}>

        <button type="submit"> Calculate </button>

        <p> Result : ${result} </p>
    </form>

</body>
</html>























































































