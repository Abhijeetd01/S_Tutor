var db ;
function openAppyPieDatabase()
{

try {
    if (!window.openDatabase) {
       // alert('not supported');
    } else {
        var shortName = 'AppyStorage';
        var version = '2.0';
        var displayName = 'Appypie Storage';
        var maxSize = 49*1024*1024; // in bytes
        db = openDatabase(shortName, version, displayName, maxSize);
        
        // You should have a database instance in db.
    }
} catch(e) {
    // Error handling code goes here.
    if (e == 2) {
        // Version number mismatch.
        //alert("Invalid database version.");
    } else {
       // alert("Unknown error "+e+".");
    }
}
}


function queryHandler(queryStr)
{
    db.transaction(
                   function (transaction) {
                   transaction.executeSql(queryStr, [], nullDataHandler, errorHandler);
                   }
                   );
}


//function createTables(db)
//{
//    db.transaction(
//                   function (transaction) {
//                   
//                   /* The first query causes the transaction to (intentionally) fail if the table exists. */
//                   transaction.executeSql('CREATE TABLE IF NOT EXISTS people(id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL DEFAULT "John Doe", shirt TEXT NOT NULL DEFAULT "Purple");', [], nullDataHandler, errorHandler);
//                   /* These insertions will be skipped if the table already exists. */
//                   transaction.executeSql('insert into people (name, shirt) VALUES ("Joe", "Green");', [], nullDataHandler, errorHandler);
//                   transaction.executeSql('insert into people (name, shirt) VALUES ("Mark", "Blue");', [], nullDataHandler, errorHandler);
//                   transaction.executeSql('insert into people (name, shirt) VALUES ("Phil", "Orange");', [], nullDataHandler, errorHandler);
//                   transaction.executeSql('insert into people (name, shirt) VALUES ("jdoe", "Purple");', [], nullDataHandler, errorHandler);
//                   
//                   }
//                   );
//    
//    
//    fetchData(db);
//}



function errorHandler(transaction, error)
{
    // error.message is a human-readable string.
    // error.code is a numeric error code
   // alert('Oops.  Error was '+error.message+' (Code '+error.code+')');
    
    // Handle errors here
    var we_think_this_error_is_fatal = true;
    if (we_think_this_error_is_fatal) return true;
    return false;
}

function nullDataHandler(transaction, results)
{

}

//function fetchData(db)
//{
//db.transaction(
//               function (transaction) {
//               var query="SELECT * from people;";
//               
//               transaction.executeSql(query, [],
//                                      function (transaction, resultSet) {
//                                      var string = "";
//                                      for (var i=0; i<resultSet.rows.length; i++) {
//                                      var row = resultSet.rows.item(i);
//                                      
//                                      string = string + "name: "+row['name']+" shirt: "+row['shirt']+"\n";
//                                      
//                                      
//                                      }
//                                      alert("Alias test:\n"+string);
//                                      }, errorHandler);
//               }, transactionErrorCallback);
//}


function fetchData(queryStr)
{
    var resultsStrValue;

    db.transaction(
                   function (transaction) {
                 
                   transaction.executeSql(queryStr, [],
                                          function (transaction, resultSet) {
                                          resultsStrValue=resultSet;
                                          
                                          
                                          return  resultsStrValue;
                                          
                                          }, errorHandler);
                   }, transactionErrorCallback);
    
 
}

function transactionErrorCallback(error)
{
    //alert('Oops1111.  Error was '+error.message+' (Code '+error.code+')');
}
