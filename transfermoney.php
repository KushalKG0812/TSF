<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
    <title>Money Transfer</title>
    <link rel="icon" href="rupee.jpg" type="image/icon type">
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 50%;
  margin-right: auto;
  margin-left: auto;
  }

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
</head>

<body>
  <header class="text-gray-600 body-font">
  <div class="container mx-auto flex flex-wrap p-5 flex-col md:flex-row items-center">
    <a class="flex title-font font-medium items-center text-gray-900 mb-4 md:mb-0">
      
        <img src="rupee.jpg" width="12%">
        <path d="M12 2L2 7l10 5 10-5-10-5zM2 17l10 5 10-5M2 12l10 5 10-5"></path>
      </svg>
      <span class="ml-3 text-xl">Grow More Bank</span>
    </a>
    <nav class="md:ml-auto flex flex-wrap items-center text-base justify-center">
      <a class="mr-5 hover:text-gray-900" href="transfermoney.php" >Money Transfer</a>
      <a class="mr-5 hover:text-gray-900" href="transactionhistory.php">Transaction History</a>
      
    </nav>
    
  </div>
</header>


<?php
    include 'config.php';
    $sql = "SELECT * FROM `bms_table`";
    $result = mysqli_query($conn,$sql);
?>
<br>
<div class="container">
        <h6 class="title-font sm:text-3xl text-3xl mb-4 font-medium text-center"> Choose the account from which amount is to be Debited    
      </h6>                   
                    <table class="center">
                        <thead>
                            <tr>
                            <th>Account Number</th>
                            <th>Account Holder Name</th>
                            <th>Balance</th> 
                            <th>Select account</th>                            
                            </tr>
                        </thead>
                        <tbody>
                <?php 
                    while($rows=mysqli_fetch_assoc($result)){
                ?>
                    <tr>
                        <td><?php echo $rows['id'] ?></td>
                        <td><?php echo $rows['Name']?></td>                        
                        <td><?php echo $rows['Balance']?></td>
                        <td style="text-align:center;"><a href="selecteduserdetail.php?id= <?php echo $rows['id'] ;?>"> <button class="inline-flex text-white bg-gray-400 border-0 py-2 px-7 focus:outline-none hover:bg-gray-500 rounded text-md">Debit</button></a></td> 
                    </tr>
                <?php
                    }
                ?>
            
                        </tbody>
                    </table>
                    </div>
                </div>
            </div> 
         </div>
         
</body>
</html>