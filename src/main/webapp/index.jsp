<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>JSP-Hello World</title>
    <link rel="stylesheet" href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css">
</head>

<body class="bg-blue-500">
    <div>
      <div class="bg-white shadow-xl rounded-3xl absolute p-4 text-center transform -translate-x-1/2 -translate-y-1/2 border top-1/2 left-1/2 max-w-2xl">
        <h2 class = "text-2xl font-semibold border-b pb-2 mx-6">Compound Interest Calculator </h2>
        <h3 class="bg-red-300 text-red-900 font-semibold text-xl w-80 rounded-lg my-2 mx-auto">${error}</h3>
        <form method = "post" action="calc" >
            <div class="grid grid-cols-2 gap-4 my-5 mx-8">
              <label for = "Principal-amount" class="text-xl flex items-center">Principal Amount: <span>$</span> </label>
              <input class="w-full p-1 border-2 placeholder-blue-800 border-blue-700 appearance-none rounded-lg focus:outline-none focus:ring-2" type="number" id="Principal-amount" name="principalAmt" value=${principal}>

              <label for = "interest" class="text-xl flex items-center">Interest Percentage:</label>
              <input class="w-full p-1 border-2 placeholder-blue-800 border-blue-700 appearance-none rounded-lg focus:outline-none focus:ring-2" type="number" id="interest" min="1" max="100" name = "interestPerc" value=${interest}>

              <label for = "years" class="text-xl flex items-center"># of Years:</label>
              <input class="w-full p-1 border-2 placeholder-blue-800 border-blue-700 appearance-none rounded-lg focus:outline-none focus:ring-2" type="number" id="years" min="1" name="years" value=${years}>

              <label for = "compoundingPeriod" class="text-xl flex items-center">Times Per Year:</label>
              <input class="w-full p-1 border-2 placeholder-blue-800 border-blue-700 appearance-none rounded-lg focus:outline-none focus:ring-2" type="number" id="compoundingPeriod" min="1" max="12" name="compoundingPeriod" value=${compoundingPeriod}>
            </div>

            <button class="bg-blue-300 text-xl font-semibold px-4 py-1 rounded-lg hover:bg-blue-800 hover:text-white" type="submit">Calculate</button>

            <p class="text-2xl font-mono text-green-700"> Result : ${result} </p>

        </form>
      </div>
    </div>
</body>

</html>























































































