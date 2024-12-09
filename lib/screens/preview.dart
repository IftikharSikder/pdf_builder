import 'package:final_project/main.dart';
import 'package:final_project/methods/footer_button_style.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter/material.dart';

class Preview extends StatefulWidget {
  const Preview({super.key});

  @override
  State<Preview> createState() => _PreviewState();
}

class _PreviewState extends State<Preview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              child: button(context, Icons.arrow_back, "Cancel", "0xFFFFFFFF", "0xFF737373", "back"),
              onTap: () {},
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .019,
            ),
            button(context, Icons.save, "Save", "0xFF358666", "0xFFFFFFFF", "download"),
          ],
        ),
      ),
      body: Center(
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
          child: Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height * .85,
            width: MediaQuery.of(context).size.width * .85,
            child: Html(
              data: """
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="initial-scale=1.0, width=device-width">
    <title>Poultry Consultancy</title>
    <style>
        body {
            font-family: DM Sans, DM Sans;
            margin: 0;
            padding: 0;
            background-color: #ffffff;
        }
        .container {
            width: 90%;
            margin: 0 auto;
        }
        .top-div {
            width: 100%;
            height: 10vh;
            border: 3px dotted #D9D9D9;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            font-size: 24px;
            margin-top: 20px;
        }
        .space {
            height: 3vh;
        }
        .horizontal-divs {
            display: flex;
            justify-content: space-between;
            width: 100%;
            height: 20%;
        }
        .horizontal-div {
            width: 49%;
            height: 15vh;
            border: 3px dotted #D9D9D9;
            display: flex;
            align-items: center;
            padding-left: 10px;
            font-size: 18px; 
        }
        .horizontal-div2 {
            width: 1%;
            height: 20vh;
            display: flex;
            align-items: center;
            padding-left: 10px;
        }
        
        .divider {
            border: 1px solid #000;
            width: 100%;
        }
        .two-columns {
            display: flex;
            justify-content: space-between;
            width: 100%;
        }
        .column {
            width: 48%;
            font-size: 16px;
        }
        /* Updated for the layout */
        .column-div-left {
            width: 37%;
            border-top: 3px solid #000;
            border-right: 3px solid #000;
            padding: 10px;
        }
        .column-div-right {
            width: 63%;
            border-top: 3px solid #000;
            padding: 10px;
        }
        .vertical-divider-container {
            display: flex;
            align-items: flex-start;
            width: 100%;
            margin-top: 20px;
        }
        .vertical-divider {
            border-left: 2px solid #000;
            height: 100vh;
            margin-left: 20px;
            margin-right: 20px;
        }
        .complaints-section {
            margin-bottom: 20px;
        }
        .complaint-text {
            margin-bottom: 20px;
        }
        .complaint-title {
            font-size: 16px;
            font-weight: bold;
        }
    </style>
</head>
<body>

    <!-- Top Div -->
    <div class="top-div">
        $headerHtml
    </div>

    <!-- Space -->
    <div class="space"></div>

    <!-- Horizontal Divs -->
    <div class="horizontal-divs">
        <div class="horizontal-div">
            $primarySectionHtml
        </div>
        <div class="horizontal-div2">
            
        </div>
        <div class="horizontal-div">
            $secondarySectionHtml
        </div>
    </div>

    <!-- Space Below Horizontal Divs -->
    <div class="space"></div>

    <!-- Divider -->
    <div class="divider"></div>

    <!-- Space Below Divider -->
    <div class="space"></div>

    <!-- Columns with Name, Age, Date, Gender -->
    <div class="two-columns">
        <div class="column">
            <div>Name: $nameHtml</div>
            <div>Age: ${ageController.text.toString()}</div>
        </div>
        <div class="column">
            <div>Date: $formattedDate</div>
            <div>Gender: ${selectedGender.toString()}</div>
        </div>
    </div>

    <!-- Owner's Complaint Section in Column -->


    <!-- Vertical Divider Section -->
    <div class="vertical-divider-container">

        <!-- Left Column (First Column with Borders) -->
        <div class="column-div-left">
            <div class="complaints-section">
            <div class="complaint-text">
                <div class="complaint-title">Owner's Complaint</div>
            </div>
            <div class="complaint-text" style="padding-left: 4%;">
                <div class="complaint-title">Demo Complaint</div>
            </div>
            <div class="complaint-text" style="padding-left: 4%;">
                <div class="complaint-title">Demo Remarks</div>
            </div>
        </div>

        <!-- Repeat the complaints section for the second and third sets -->
        <div class="complaints-section">
            <div class="complaint-text">
                <div class="complaint-title">Clinical Finding</div>
            </div>
            <div class="complaint-text" style="padding-left: 4%;">
                <div class="complaint-title">Demo Clinical Findings</div>
            </div>
            <div class="complaint-text" style="padding-left: 4%;">
                <div class="complaint-title">Demo Remarks</div>
            </div>
        </div>

        <div class="complaints-section">
            <div class="complaint-text">
                <div class="complaint-title">Diagnosis</div>
            </div>
            <div class="complaint-text" style="padding-left: 4%;">
                <div class="complaint-title">Demo Diagnosis</div>
            </div>
            <div class="complaint-text" style="padding-left: 4%;">
                <div class="complaint-title">Demo Remarks</div>
            </div>
        </div>
    </div>
    
     <div class="column-div-right">
            <div class="complaints-section">
            <div class="complaint-text">
                <div class="complaint-title">RX</div>
            </div>
            <div class="complaint-text" style="padding-left: 4%;">
                <div class="complaint-title">Demo Medicines</div>
            </div>
            <div class="complaint-text" style="padding-left: 4%;">
                <div class="complaint-title">Demo Remarks</div>
            </div>
        </div>

        <!-- Repeat the complaints section for the second and third sets -->
        <div class="complaints-section">
            <div class="complaint-text">
                <div class="complaint-title">Advice</div>
            </div>
            <div class="complaint-text" style="padding-left: 4%;">
                <div class="complaint-title">Demo Advice</div>
            </div>
            <div class="complaint-text" style="padding-left: 4%;">
                <div class="complaint-title">Demo Remarks</div>
            </div>
        </div>
    </div>
        </div>

        </div>

</body>
</html>
""",
            ),
          ),
        ),
      ),
    );
  }
}
