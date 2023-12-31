<?xml version="1.0" encoding="utf-8"?>

<!-- 
     Stylesheet for Microsoft Word 2016 Bibliography formatting.
     
     Author(s): Clara (happynotthehippo@gmail.com)
               
     Copyright: Copyright (c) 2023 Clara

                Permission is hereby granted, free of charge, to any person obtaining a
                copy of this software and associated documentation files (the "Software"),
                to deal in the Software without restriction, including without limitation
                the rights to use, copy, modify, merge, publish, distribute, sublicense,
                and/or sell copies of the Software, and to permit persons to whom the
                Software is furnished to do so, subject to the following conditions:

                The above copyright notice and this permission notice shall be included 
                in all copies or substantial portions of the Software.

                THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
                IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
                FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
                THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
                LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
                FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
                DEALINGS IN THE SOFTWARE.
  -->

<xsl:stylesheet version="1.0" xmlns:b="http://schemas.openxmlformats.org/officeDocument/2006/bibliography" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt">

  <!-- Variable containing all necessary data for a certain style of bibliography. -->
  <xsl:variable name="data">
    <general>
      <stylename>MHRA</stylename>
      <version>2023.12.30</version>
      <xslversion>2013</xslversion>
      <author>Clara (happynotthehippo@gmail.com)</author>
      <comments>
        This is a revived version of the MHRA style, which was originally created by Yves Dhondt (yves.dhondt@gmail.com) and based on version 2.1 of the BibWord stylesheet.
        It has been updated to work with Word 2016 and brought in line with the 2013, 3rd edition MHRA style guide.
        The style is designed to be used with footnotes, rather than in-text citations. MHRA is weird like that: I don't much like it, and yet here I am. Merry Christmas, A.
        Bibliographies are generated according to the MHRA style guide. The bibliography is sorted first by each source's comments field, then by author, then by year, and finally by title.
        As a result, the bibliography can be split into primary and secondary sources by adding a number to the comments field of each source (e.g. "1" for primary sources and "2" for secondary sources).
        If the comment field is left blank, the field will default to a '2' (i.e., a secondary source), such that you do not need to number each secondary source individually, or at all if you do not wish to use this feature.
        Unfortunately, the stylesheet cannot automatically add a hyphen to the first line of each author's work. This will need to be done manually, but I hope that the stylesheet will still save you some time.
      </comments>
      <display_errors>yes</display_errors>
    </general>
    <importantfields>
      <source type="ArticleInAPeriodical">
        <b:ImportantField>b:Author/b:Author/b:NameList</b:ImportantField>
        <b:ImportantField>b:Title</b:ImportantField>
        <b:ImportantField>b:PeriodicalTitle</b:ImportantField>
        <b:ImportantField>b:Day</b:ImportantField>
        <b:ImportantField>b:Month</b:ImportantField>
        <b:ImportantField>b:Year</b:ImportantField>
        <b:ImportantField>b:Pages</b:ImportantField>
        <b:ImportantField>b:Comments</b:ImportantField>
      </source>
      <source type="Book">
        <b:ImportantField>b:Author/b:Author/b:NameList</b:ImportantField>
        <b:ImportantField>b:Title</b:ImportantField>
        <b:ImportantField>b:Author/b:Editor/b:NameList</b:ImportantField>
        <b:ImportantField>b:Edition</b:ImportantField>
        <b:ImportantField>b:Volume</b:ImportantField>
        <b:ImportantField>b:Year</b:ImportantField>
        <b:ImportantField>b:City</b:ImportantField>
        <b:ImportantField>b:Publisher</b:ImportantField>
        <b:ImportantField>b:Pages</b:ImportantField>
        <b:ImportantField>b:Comments</b:ImportantField>
      </source>
      <source type="BookSection">
        <b:ImportantField>b:Author/b:Author/b:NameList</b:ImportantField>
        <b:ImportantField>b:Title</b:ImportantField>
        <b:ImportantField>b:BookTitle</b:ImportantField>
        <b:ImportantField>b:Author/b:Editor/b:NameList</b:ImportantField>
        <b:ImportantField>b:Edition</b:ImportantField>
        <b:ImportantField>b:Volume</b:ImportantField>
        <b:ImportantField>b:Year</b:ImportantField>
        <b:ImportantField>b:City</b:ImportantField>
        <b:ImportantField>b:Publisher</b:ImportantField>
        <b:ImportantField>b:Pages</b:ImportantField>
        <b:ImportantField>b:Comments</b:ImportantField>
      </source>
      <source type="ConferenceProceedings">
        <b:ImportantField>b:Author/b:Author/b:NameList</b:ImportantField>
        <b:ImportantField>b:Title</b:ImportantField>
        <b:ImportantField>b:ConferenceName</b:ImportantField>
        <b:ImportantField>b:Author/b:Editor/b:NameList</b:ImportantField>
        <b:ImportantField>b:Edition</b:ImportantField>
        <b:ImportantField>b:Volume</b:ImportantField>
        <b:ImportantField>b:Year</b:ImportantField>
        <b:ImportantField>b:City</b:ImportantField>
        <b:ImportantField>b:Publisher</b:ImportantField>
        <b:ImportantField>b:Pages</b:ImportantField>
        <b:ImportantField>b:Comments</b:ImportantField>
      </source>
      <source type="DocumentFromInternetSite">
        <b:ImportantField>b:Author/b:Author/b:NameList</b:ImportantField>
        <b:ImportantField>b:Title</b:ImportantField>
        <b:ImportantField>b:InternetSiteTitle</b:ImportantField>
        <b:ImportantField>b:URL</b:ImportantField>
        <b:ImportantField>b:YearAccessed</b:ImportantField>
        <b:ImportantField>b:MonthAccessed</b:ImportantField>
        <b:ImportantField>b:DayAccessed</b:ImportantField>
        <b:ImportantField>b:Comments</b:ImportantField>
      </source>
      <source type="ElectronicSource">
        <b:ImportantField>b:Author/b:Author/b:NameList</b:ImportantField>
        <b:ImportantField>b:Title</b:ImportantField>
        <b:ImportantField>b:PublicationTitle</b:ImportantField>
        <b:ImportantField>b:Volume</b:ImportantField>
        <b:ImportantField>b:Year</b:ImportantField>
        <b:ImportantField>b:URL</b:ImportantField>
        <b:ImportantField>b:YearAccessed</b:ImportantField>
        <b:ImportantField>b:MonthAccessed</b:ImportantField>
        <b:ImportantField>b:DayAccessed</b:ImportantField>
        <b:ImportantField>b:Pages</b:ImportantField>
        <b:ImportantField>b:Comments</b:ImportantField>
      </source>
      <source type="Film">
        <b:ImportantField>b:Author/b:Director/b:NameList</b:ImportantField>
        <b:ImportantField>b:Title</b:ImportantField>
        <b:ImportantField>b:Distributor</b:ImportantField>
        <b:ImportantField>b:Year</b:ImportantField>
        <b:ImportantField>b:Comments</b:ImportantField>
      </source>
      <source type="InternetSite">
        <b:ImportantField>b:Author/b:Author/b:NameList</b:ImportantField>
        <b:ImportantField>b:Title</b:ImportantField>
        <b:ImportantField>b:InternetSiteTitle</b:ImportantField>
        <b:ImportantField>b:URL</b:ImportantField>
        <b:ImportantField>b:YearAccessed</b:ImportantField>
        <b:ImportantField>b:MonthAccessed</b:ImportantField>
        <b:ImportantField>b:DayAccessed</b:ImportantField>
        <b:ImportantField>b:Comments</b:ImportantField>
      </source>
      <source type="JournalArticle">
        <b:ImportantField>b:Author/b:Author/b:NameList</b:ImportantField>
        <b:ImportantField>b:Title</b:ImportantField>
        <b:ImportantField>b:JournalName</b:ImportantField>
        <b:ImportantField>b:Volume</b:ImportantField>
        <b:ImportantField>b:Issue</b:ImportantField>
        <b:ImportantField>b:Year</b:ImportantField>
        <b:ImportantField>b:Pages</b:ImportantField>
        <b:ImportantField>b:Comments</b:ImportantField>
      </source>
      <source type="Report">
        <b:ImportantField>b:Author/b:Author/b:NameList</b:ImportantField>
        <b:ImportantField>b:Title</b:ImportantField>
        <b:ImportantField>b:ThesisType</b:ImportantField>
        <b:ImportantField>b:Institution</b:ImportantField>
        <b:ImportantField>b:Department</b:ImportantField>
        <b:ImportantField>b:Year</b:ImportantField>
        <b:ImportantField>b:Pages</b:ImportantField>
        <b:ImportantField>b:Comments</b:ImportantField>
      </source>
      <source type="SoundRecording">
        <b:ImportantField>b:Author/b:Artist/b:NameList</b:ImportantField>
        <b:ImportantField>b:Author/b:Composer/b:NameList</b:ImportantField>
        <b:ImportantField>b:Author/b:Conductor/b:NameList</b:ImportantField>
        <b:ImportantField>b:Author/b:Director/b:NameList</b:ImportantField>
        <b:ImportantField>b:Author/b:Performer/b:NameList</b:ImportantField>
        <b:ImportantField>b:Title</b:ImportantField>
        <b:ImportantField>b:ProductionCompany</b:ImportantField>
        <b:ImportantField>b:RecordingNumber</b:ImportantField>
        <b:ImportantField>b:Year</b:ImportantField>
        <b:ImportantField>b:Comments</b:ImportantField>
      </source>
    </importantfields>
    <citation>
      <openbracket></openbracket>
      <closebracket></closebracket>
      <separator>,</separator>
      <noauthor>-Artist-Author-BookAuthor-Compiler-Composer-Conductor-Counsel-Director-Editor-Interviewee-Interviewer-Inventor-Performer-ProducerName-Translator-Writer-</noauthor>
      <notitle>-Title-AlbumTitle-BookTitle-BroadcastTitle-InternetSiteTitle-PeriodicalTitle-PublicationTitle-ShortTitle-</notitle>
      <noyear>-Year-YearAccessed-"n.d."-</noyear>
      <source type="Placeholder">
        <format>{%CitationPrefix%}[[%Tag%]]{%CitationSuffix%}</format>
      </source>
      <source type="ArticleInAPeriodical">
        <format>{%CitationPrefix%}{%Author:1%}{, '%Title|ShortTitle%'}{, &lt;i&gt;%PeriodicalTitle%&lt;/i&gt;}{, {{%Day% }%Month:s% }%Year%}{, %Comments%}{, %Pages:p. :pp. :a2%}{ (%CitationPages:p. :pp. :a2%)}.{%CitationSuffix%}</format>
      </source>
      <source type="Book">
        <format>{%CitationPrefix%}{%Author:1%}{, &lt;i&gt;%Title|ShortTitle%&lt;/i&gt;}{, ed. by %Editor:1%}{, trans. by %Translator:1%}{, %ShortTitle%}{, %Edition:os% edn}{, %NumberVolumes% vols} (%City|CountryRegion|"[n.p.]"%{, %StateProvince%}: %Publisher|"[n.pub.]"%, %Year|"[n.d.]"%){, &lt;span style='font-variant: small-caps;'&gt;%Volume:R%&lt;/span&gt;{, %Pages:::a2%}}{, %Pages:p. :pp. :a2%}{, %CitationPages:p. :pp. :a2%} { &lt;%URL:ls%&gt;{ [accessed {{%DayAccessed% }%MonthAccessed:s% }%YearAccessed%]}}.{%CitationSuffix%}</format>
      </source>
      <source type="BookSection">
        <format>{%CitationPrefix%}{%Author:1%}{, '%Title|ShortTitle%'}{, in &lt;i&gt;%BookTitle%&lt;/i&gt;}{, ed. by %Editor:1%}{, trans. by %Translator:1%}{, %ShortTitle%}{, %Edition:os% edn}{, %NumberVolumes% vols} (%City|CountryRegion|"[n.p.]"%{, %StateProvince%}: %Publisher|"[n.pub.]"%, %Year|"[n.d.]"%){, &lt;span style='font-variant: small-caps;'&gt;%Volume:R%&lt;/span&gt;{, %Pages:::a2%}}{, %Pages:p. :pp. :a2%}{, %CitationPages:p. :pp. :a2%} { &lt;%URL:ls%&gt;{ [accessed {{%DayAccessed% }%MonthAccessed:s% }%YearAccessed%]}}.{%CitationSuffix%}</format>
      </source>
      <source type="ConferenceProceedings">
        <format>{%CitationPrefix%}{%Author:1%}{, '%Title|ShortTitle%'}{, in &lt;i&gt;%ConferenceName%&lt;/i&gt;}{, ed. by %Editor:1%}{, trans. by %Translator:1%}{, %ShortTitle%}{, %Edition:os% edn}{, %NumberVolumes% vols} (%City|CountryRegion|"[n.p.]"%{, %StateProvince%}: %Publisher|"[n.pub.]"%, %Year|"[n.d.]"%){, &lt;span style='font-variant: small-caps;'&gt;%Volume:R%&lt;/span&gt;{, %Pages:::a2%}}{, %Pages:p. :pp. :a2%}{, %CitationPages:p. :pp. :a2%}.{%CitationSuffix%}</format>
      </source>
      <source type="DocumentFromInternetSite">
        <format>{%CitationPrefix%}{%Author:1%}{, '%Title|ShortTitle%'}{, in &lt;i&gt;%InternetSiteTitle%&lt;/i&gt;}{ &lt;%url:ls%&gt;{ [accessed {{%DayAccessed% }%MonthAccessed:s% }%YearAccessed%]}}{{ (%CitationPages:p. :pp. :a2|Pages:p. :pp. :a2%)}}{%CitationSuffix%}</format>
      </source>
      <source type="ElectronicSource">
        <format>{%CitationPrefix%}{%Author:1%}{, '%Title|ShortTitle%'}{, &lt;i&gt;%PublicationTitle%&lt;/i&gt;}{, %Volume%{ (%Year%)}}{, %Year%}{ &lt;%url:ls%&gt;{ [accessed {{%DayAccessed% }%MonthAccessed:s% }%YearAccessed%]}}{{ (%CitationPages:p. :pp. :a2|Pages:p. :pp. :a2%)}}{%CitationSuffix%}</format>
      </source>
      <source type="Film">
        <format>{%CitationPrefix%}{&lt;i&gt;%Title|ShortTitle%&lt;/i&gt;}{, dir. by %Director:1%} ({%Distributor%{, %Year%}}{%Year%}){ (%CitationPages:p. :pp. :a2%)}.{%CitationSuffix%}</format>
      </source>
      <source type="InternetSite">
        <format>{%CitationPrefix%}{%Author:1%}{, '%Title|ShortTitle%'}{, in &lt;i&gt;%InternetSiteTitle%&lt;/i&gt;}{ &lt;%url:ls%&gt;{ [accessed {{%DayAccessed% }%MonthAccessed:s% }%YearAccessed%]}}{{ (%CitationPages:p. :pp. :a2|Pages:p. :pp. :a2%)}}{%CitationSuffix%}</format>
      </source>
      <source type="JournalArticle">
        <format>{%CitationPrefix%}{%Author:1%}{, '%Title|ShortTitle%'}{, &lt;i&gt;%JournalName%&lt;/i&gt;}{, %Volume%{.%Issue%}}{ (%Year%)}{, %Pages:::a2%}{ (%CitationPages:p. :pp. :a2%)}{ &lt;%url:ls%&gt;{ [accessed {{%DayAccessed% }%MonthAccessed:s% }%YearAccessed%]}}.{%CitationSuffix%}</format>
      </source>
      <source type="Report">
        <format>{%CitationPrefix%}{%Author:1%}{, '%Title|ShortTitle%'} ({%ThesisType|"unpublished thesis"%{, %Institution%}{, %Department%}{, %Year%}}{%Institution%{, %Year%}}{%Year%}){, %CitationPages:p. :pp. :a2|Pages:::a2%}.{%CitationSuffix%}</format>
      </source>
      <source type="SoundRecording">
        <format>{%CitationPrefix%}{%Composer:1|Author:1%}{, &lt;i&gt;%Title|ShortTitle%&lt;/i&gt;}{, %Artist:1%}{, cond. by %Conductor:1%}{, dir. by %Director:1%}{, perf. by %Performer:1%} ({%ProductionCompany|Producer:1%{, %RecordingNumber%}{, %Year%}}{%RecordingNumber%{, %Year%}}{%Year%}).{ (%CitationPages:p. :pp. :a2%)}.{%CitationSuffix%}</format>
      </source>
    </citation>
    <bibliography>
      <columns>1</columns>
      <source type="Placeholder">
        <column id="1">
          <halign>left</halign>
          <valign>top</valign>
          <format>[[%Tag%]]</format>
        </column>
      </source>
      <source type="ArticleInAPeriodical">
        <column id="1">
          <halign>left</halign>
          <valign>top</valign>
          <format>{%Author:2%}{, '%Title|ShortTitle%'}{, &lt;i&gt;%PeriodicalTitle%&lt;/i&gt;}{, {{%Day% }%Month:s% }%Year%}{, %Comments%}{, %Pages:p. :pp. :a2%}{ (%CitationPages:p. :pp. :a2%)}</format>
        </column>
        <sortkey>{%Comments%|"2"}{%Author:0|Title|ShortTitle%}{ %Year%}{ %Title|ShortTitle%}</sortkey>
      </source>
      <source type="Book">
        <column id="1">
          <halign>left</halign>
          <valign>top</valign>
          <format>{%Author:2%}{, &lt;i&gt;%Title|ShortTitle%&lt;/i&gt;}{, ed. by %Editor:1%}{, trans. by %Translator:1%}{, %ShortTitle%}{, %Edition:os% edn}{, %NumberVolumes% vols} (%City|CountryRegion|"[n.p.]"%{, %StateProvince%}: %Publisher|"[n.pub.]"%, %Year|"[n.d.]"%){, &lt;span style='font-variant: small-caps;'&gt;%Volume:R%&lt;/span&gt;{, %Pages:::a2%}}{, %Pages:p. :pp. :a2%}{, %CitationPages:p. :pp. :a2%} { &lt;%URL:ls%&gt;{ [accessed {{%DayAccessed% }%MonthAccessed:s% }%YearAccessed%]}}</format>
        </column>
        <sortkey>{%Comments%|"2"}{%Author:0|Editor:0|Title|ShortTitle%}{ %Year%}{ %Title|ShortTitle%}</sortkey>
      </source>
      <source type="BookSection">
        <column id="1">
          <halign>left</halign>
          <valign>top</valign>
          <format>{%Author:2%}{, '%Title|ShortTitle%'}{, in &lt;i&gt;%BookTitle%&lt;/i&gt;}{, ed. by %Editor:1%}{, trans. by %Translator:1%}{, %ShortTitle%}{, %Edition:os% edn}{, %NumberVolumes% vols} (%City|CountryRegion|"[n.p.]"%{, %StateProvince%}: %Publisher|"[n.pub.]"%, %Year|"[n.d.]"%){, &lt;span style='font-variant: small-caps;'&gt;%Volume:R%&lt;/span&gt;{, %Pages:::a2%}}{, %Pages:p. :pp. :a2%}{, %CitationPages:p. :pp. :a2%} { &lt;%URL:ls%&gt;{ [accessed {{%DayAccessed% }%MonthAccessed:s% }%YearAccessed%]}}</format>
        </column>
        <sortkey>{%Comments%|"2"}{%Author:0|Editor:0|BookAuthor:0|Title|ShortTitle%}{ %Year%}{ %Title|ShortTitle%}</sortkey>
      </source>
      <source type="ConferenceProceedings">
        <column id="1">
          <halign>left</halign>
          <valign>top</valign>
          <format>{%Author:2%}{, '%Title|ShortTitle%'}{, in &lt;i&gt;%ConferenceName%&lt;/i&gt;}{, ed. by %Editor:1%}{, trans. by %Translator:1%}{, %ShortTitle%}{, %Edition:os% edn}{, %NumberVolumes% vols} (%City|CountryRegion|"[n.p.]"%{, %StateProvince%}: %Publisher|"[n.pub.]"%, %Year|"[n.d.]"%){, &lt;span style='font-variant: small-caps;'&gt;%Volume:R%&lt;/span&gt;{, %Pages:::a2%}}{, %Pages:p. :pp. :a2%}{, %CitationPages:p. :pp. :a2%}</format>
        </column>
        <sortkey>{%Comments%|"2"}{%Author:0|Title|ShortTitle%}{ %Year%}{ %Title|ShortTitle%}</sortkey>
      </source>
      <source type="DocumentFromInternetSite">
        <column id="1">
          <halign>left</halign>
          <valign>top</valign>
          <format>{%Author:2%}{, '%Title|ShortTitle%'}{, in &lt;i&gt;%InternetSiteTitle%&lt;/i&gt;}{ &lt;%url:ls%&gt;{ [accessed {{%DayAccessed% }%MonthAccessed:s% }%YearAccessed%]}}{{ (%CitationPages:p. :pp. :a2|Pages:p. :pp. :a2%)}}</format>
        </column>
        <sortkey>{%Comments%|"2"}{%Author:0|Title|ShortTitle|InternetSiteTitle%}{ %Year%}{ %Title|ShortTitle|InternetSiteTitle%}</sortkey>
      </source>
      <source type="ElectronicSource">
        <column id="1">
          <halign>left</halign>
          <valign>top</valign>
          <format>{%Author:2%}{, '%Title|ShortTitle%'}{, &lt;i&gt;%PublicationTitle%&lt;/i&gt;}{, %Volume%{ (%Year%)}}{, %Year%}{ &lt;%url:ls%&gt;{ [accessed {{%DayAccessed% }%MonthAccessed:s% }%YearAccessed%]}}{{ (%CitationPages:p. :pp. :a2|Pages:p. :pp. :a2%)}}</format>
        </column>
        <sortkey>{%Comments%|"2"}{%Author:0|Title|ShortTitle|PublicationTitle%}{ %Year%}{ %Title|ShortTitle|PublicationTitle%}</sortkey>
      </source>
      <source type="Film">
        <column id="1">
          <halign>left</halign>
          <valign>top</valign>
          <format>{&lt;i&gt;%Title|ShortTitle%&lt;/i&gt;}{, dir. by %Director:2%} ({%Distributor%{, %Year%}}{%Year%}){ (%CitationPages:p. :pp. :a2%)}</format>
        </column>
        <sortkey>{%Comments%|"2"}{%Author:0|Title|ShortTitle%}{ %Year%}{ %Title|ShortTitle%}</sortkey>
      </source>
      <source type="InternetSite">
        <column id="1">
          <halign>left</halign>
          <valign>top</valign>
          <format>{%Author:2%}{, '%Title|ShortTitle%'}{, in &lt;i&gt;%InternetSiteTitle%&lt;/i&gt;}{ &lt;%url:ls%&gt;{ [accessed {{%DayAccessed% }%MonthAccessed:s% }%YearAccessed%]}}{{ (%CitationPages:p. :pp. :a2|Pages:p. :pp. :a2%)}}</format>
        </column>
        <sortkey>{%Comments%|"2"}{%Author:0|Title|ShortTitle|InternetSiteTitle%}{ %Year%}{ %Title|ShortTitle|InternetSiteTitle%}</sortkey>
      </source>
      <source type="JournalArticle">
        <column id="1">
          <halign>left</halign>
          <valign>top</valign>
          <format>{%Author:2%}{, '%Title|ShortTitle%'}{, &lt;i&gt;%JournalName%&lt;/i&gt;}{, %Volume%{.%Issue%}}{ (%Year%)}{, %Pages:::a2%}{ (%CitationPages:p. :pp. :a2%)}{ &lt;%url:ls%&gt;{ [accessed {{%DayAccessed% }%MonthAccessed:s% }%YearAccessed%]}}</format>
        </column>
        <sortkey>{%Comments%|"2"}{%Author:0|Title|ShortTitle%}{ %Year%}{ %Title|ShortTitle%}</sortkey>
      </source>
      <source type="Report">
        <column id="1">
          <halign>left</halign>
          <valign>top</valign>
          <format>{%Author:2%}{, '%Title|ShortTitle%'} ({%ThesisType|"unpublished thesis"%{, %Institution%}{, %Department%}{, %Year%}}{%Institution%{, %Year%}}{%Year%}){, %CitationPages:p. :pp. :a2|Pages:::a2%}</format>
        </column>
        <sortkey>{%Comments%|"2"}{%Author:0|Title|ShortTitle%}{ %Year%}{ %Title|ShortTitle%}</sortkey>
      </source>
      <source type="SoundRecording">
        <column id="1">
          <halign>left</halign>
          <valign>top</valign>
          <format>{%Composer:2|Author:2%}{, &lt;i&gt;%Title|ShortTitle%&lt;/i&gt;}{, %Artist:1%}{, cond. by %Conductor:1%}{, dir. by %Director:1%}{, perf. by %Performer:1%} ({%ProductionCompany|Producer:1%{, %RecordingNumber%}{, %Year%}}{%RecordingNumber%{, %Year%}}{%Year%}).{ (%CitationPages:p. :pp. :a2%)}</format>
        </column>
        <sortkey>{%Comments%|"2"}{%Composer:0|Author:0|Title|ShortTitle%}{ %Year%}{ %Title|ShortTitle%}</sortkey>
      </source>
    </bibliography>
    <namelists>
      <list name="sort" id="0">
        <single_prefix></single_prefix>
        <multi_prefix></multi_prefix>
        <corporate>{%Corporate%}</corporate>
        <first_person>{%Last|First%}</first_person>
        <other_persons>{%Last|First%}</other_persons>
        <separator_between_if_two> </separator_between_if_two>
        <separator_between_if_more_than_two> </separator_between_if_more_than_two>
        <separator_before_last></separator_before_last>
        <max_number_of_persons_to_display>500</max_number_of_persons_to_display>
        <number_of_persons_to_display_if_more_than_max>500</number_of_persons_to_display_if_more_than_max>
        <overflow></overflow>
        <single_suffix></single_suffix>
        <multi_suffix></multi_suffix>
      </list>
      <list name="author" id="1">
        <single_prefix></single_prefix>
        <multi_prefix></multi_prefix>
        <corporate>{%Corporate%}</corporate>
        <first_person>{%First% }{%Middle% }{%Last%}</first_person>
        <other_persons>{%First% }{%Middle% }{%Last%}</other_persons>
        <separator_between_if_two> and </separator_between_if_two>
        <separator_between_if_more_than_two>, </separator_between_if_more_than_two>
        <separator_before_last> and </separator_before_last>
        <max_number_of_persons_to_display>3</max_number_of_persons_to_display>
        <number_of_persons_to_display_if_more_than_max>1</number_of_persons_to_display_if_more_than_max>
        <overflow> and others</overflow>
        <single_suffix></single_suffix>
        <multi_suffix></multi_suffix>
      </list>
      <list name="author bib" id="2">
        <single_prefix></single_prefix>
        <multi_prefix></multi_prefix>
        <corporate>{%Corporate%}</corporate>
        <first_person>{%Last%}, {%First%}{ %Middle%}</first_person>
        <other_persons>{%First% }{%Middle% }{%Last%}</other_persons>
        <separator_between_if_two> and </separator_between_if_two>
        <separator_between_if_more_than_two>, </separator_between_if_more_than_two>
        <separator_before_last> and </separator_before_last>
        <max_number_of_persons_to_display>3</max_number_of_persons_to_display>
        <number_of_persons_to_display_if_more_than_max>1</number_of_persons_to_display_if_more_than_max>
        <overflow> and others</overflow>
        <single_suffix></single_suffix>
        <multi_suffix></multi_suffix>
      </list>
    </namelists>
    <strings>
      <months>
        <month number="1">January</month>
        <month number="2">February</month>
        <month number="3">March</month>
        <month number="4">April</month>
        <month number="5">May</month>
        <month number="6">June</month>
        <month number="7">July</month>
        <month number="8">August</month>
        <month number="9">September</month>
        <month number="10">October</month>
        <month number="11">November</month>
        <month number="12">December</month>
      </months>
    </strings>
  </xsl:variable>

  <!-- Indicates that all output will be in the HTML format. -->
  <xsl:output method="html" encoding="utf-8"></xsl:output>

  <!-- Handle the different types of input documents. -->
  <xsl:template match="/">

    <xsl:choose>
      <!-- Gets the name of the style (displayed on the citation style dropdown). -->
      <xsl:when test="b:StyleNameLocalized">
        <xsl:value-of select="msxsl:node-set($data)/general/stylename"></xsl:value-of>
      </xsl:when>

      <!-- Gets the version information for the style (not displayed, as far as I can tell). -->
      <xsl:when test="b:Version">
        <xsl:value-of select="msxsl:node-set($data)/general/version"></xsl:value-of>
      </xsl:when>

      <!-- Gets the XSL version information for the style (displayed on the citation style dropdown). -->
      <xsl:when test="b:XslVersion">
        <xsl:value-of select="msxsl:node-set($data)/general/xslversion"></xsl:value-of>
      </xsl:when>

      <!-- Gets a description of the style (not displayed, as far as I can tell). -->
      <xsl:when test="b:Description">
        <xsl:value-of select="msxsl:node-set($data)/general/description"></xsl:value-of>
      </xsl:when>

      <!-- Retrieve the most important fields for a certain type of citation. -->
      <xsl:when test="b:GetImportantFields">
        <xsl:variable name="type" select="b:GetImportantFields/b:SourceType"></xsl:variable>
        <b:ImportantFields>
          <xsl:copy-of select="msxsl:node-set($data)/importantfields/source[@type = $type]/*"></xsl:copy-of>
        </b:ImportantFields>
      </xsl:when>

      <!-- Formats a citation for display. -->
      <xsl:when test="b:Citation">
        <xsl:choose>
          <xsl:when test="msxsl:node-set($data)/citation">
            <xsl:call-template name="format-citation"></xsl:call-template>
          </xsl:when>
          <xsl:otherwise>
            <!-- Fallback method. -->
            <xsl:call-template name="format-footnote-citation"></xsl:call-template>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:when>

      <!-- Formats a footnote citation for display (Word 2008 or later). -->
      <xsl:when test="b:FootnoteCitation">
        <xsl:choose>
          <xsl:when test="msxsl:node-set($data)/footnotecitation">
            <xsl:call-template name="format-footnote-citation"></xsl:call-template>
          </xsl:when>
          <xsl:otherwise>
            <!-- Fallback method. -->
            <xsl:call-template name="format-citation"></xsl:call-template>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:when>

      <!-- Formats a bibliography for display. -->
      <xsl:when test="b:Bibliography">
        <xsl:call-template name="format-bibliography"></xsl:call-template>
      </xsl:when>

      <!-- Add a b:BibOrder element to b:Source elements (not used by Word, BibWord specific!). -->
      <xsl:when test="b:BibWord">
        <xsl:call-template name="bibword-extensions"></xsl:call-template>
      </xsl:when>
    </xsl:choose>

  </xsl:template>

  <!-- Formats the citation. -->
  <xsl:template name="format-citation">

    <!-- Generate an XML node-set from the formatting data. -->
    <xsl:variable name="params" select="msxsl:node-set($data)"></xsl:variable>

    <html xmlns="http://www.w3.org/TR/REC-html40">
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"></meta>
      </head>
      <body>
        <p>

          <!-- Display the open bracket if this is the first citation. -->
          <xsl:if test="/b:Citation/b:FirstAuthor">
            <xsl:value-of select="$params/citation/openbracket" disable-output-escaping="yes"></xsl:value-of>
          </xsl:if>

          <!-- Not handled: MinAuthors, SameAuthors, RepeatedAuthor. -->
          <xsl:variable name="citation">
            <!-- Get the format string. -->
            <xsl:variable name="format">
              <xsl:variable name="type" select="/b:Citation/b:Source/b:Type"></xsl:variable>
              <xsl:variable name="sourcetype" select="/b:Citation/b:Source/b:SourceType"></xsl:variable>

              <xsl:choose>
                <!-- If there is no source type, its a placeholder. -->
                <xsl:when test="string-length($sourcetype) = 0 and string-length(msxsl:node-set($data)/citation/source[@type = 'Placeholder']/format) &gt; 0">
                  <xsl:value-of select="msxsl:node-set($data)/citation/source[@type = 'Placeholder']/format"></xsl:value-of>
                </xsl:when>
                <!-- Go for the type element if available. -->
                <xsl:when test="string-length($type) &gt; 0 and string-length(msxsl:node-set($data)/citation/source[@type = $type]/format) &gt; 0 ">
                  <xsl:value-of select="msxsl:node-set($data)/citation/source[@type = $type]/format"></xsl:value-of>
                </xsl:when>
                <!-- Else go for the source type element if available. -->
                <xsl:when test="string-length(msxsl:node-set($data)/citation/source[@type = $sourcetype]/format) &gt; 0 ">
                  <xsl:value-of select="msxsl:node-set($data)/citation/source[@type = $sourcetype]/format"></xsl:value-of>
                </xsl:when>
                <!-- Else display error message. -->
                <xsl:otherwise>
                  <xsl:if test="msxsl:node-set($data)/general/display_errors = 'yes'">
                    <xsl:text>&lt;b&gt;Unsupported </xsl:text>
                    <xsl:if test="string-length($type) &gt; 0">
                      <xsl:text>type (</xsl:text>
                      <xsl:value-of select="$type"></xsl:value-of>
                      <xsl:text>) and </xsl:text>
                    </xsl:if>
                    <xsl:text>source type (</xsl:text>
                    <xsl:value-of select="$sourcetype"></xsl:value-of>
                    <xsl:text>) for source </xsl:text>
                    <xsl:value-of select="/b:Citation/b:Source/b:Tag"></xsl:value-of>
                    <xsl:text>.&lt;/b&gt;</xsl:text>
                  </xsl:if>
                </xsl:otherwise>
              </xsl:choose>

            </xsl:variable>

            <!-- Extend the source. -->
            <xsl:variable name="extendedSource">
              <b:Source>
                <xsl:copy-of select="/b:Citation/b:Source/*"></xsl:copy-of>
                <!-- For processing the \f parameter. -->
                <b:CitationPrefix>
                  <xsl:value-of select="/b:Citation/b:PagePrefix"></xsl:value-of>
                </b:CitationPrefix>
                <!-- For processing the \s parameter. -->
                <b:CitationSuffix>
                  <xsl:value-of select="/b:Citation/b:PageSuffix"></xsl:value-of>
                </b:CitationSuffix>
                <!-- For processing the \p parameter. -->
                <b:CitationPages>
                  <xsl:value-of select="/b:Citation/b:Pages"></xsl:value-of>
                </b:CitationPages>
                <!-- For processing the \v parameter. -->
                <b:CitationVolume>
                  <xsl:value-of select="/b:Citation/b:Volume"></xsl:value-of>
                </b:CitationVolume>
              </b:Source>
            </xsl:variable>

            <xsl:call-template name="format-source">
              <xsl:with-param name="format" select="$format"></xsl:with-param>
              <xsl:with-param name="source" select="msxsl:node-set($extendedSource)/b:Source"></xsl:with-param>
              <xsl:with-param name="disallowed">
                <!-- Do not display the authors of the work. -->
                <xsl:if test="/b:Citation/b:NoAuthor">
                  <xsl:value-of select="msxsl:node-set($data)/citation/noauthor"></xsl:value-of>
                </xsl:if>
                <!-- Do not display the title of the work. -->
                <xsl:if test="/b:Citation/b:NoTitle">
                  <xsl:value-of select="msxsl:node-set($data)/citation/notitle"></xsl:value-of>
                </xsl:if>
                <!-- Do not display the year the work was written or accessed in. -->
                <xsl:if test="/b:Citation/b:NoYear">
                  <xsl:value-of select="msxsl:node-set($data)/citation/noyear"></xsl:value-of>
                </xsl:if>
              </xsl:with-param>
            </xsl:call-template>
          </xsl:variable>

          <xsl:choose>
            <xsl:when test="$params/general/citation_as_link = 'yes'">
              <a href="#{/b:Citation/b:Source/b:Tag}">
                <xsl:value-of select="$citation" disable-output-escaping="yes"></xsl:value-of>
              </a>
            </xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="$citation" disable-output-escaping="yes"></xsl:value-of>
            </xsl:otherwise>
          </xsl:choose>

          <!-- end citation -->

          <!-- Display the group separator if this is not the last citation. -->
          <xsl:if test="not(/b:Citation/b:LastAuthor)">
            <xsl:value-of select="$params/citation/separator" disable-output-escaping="yes"></xsl:value-of>
          </xsl:if>

          <!-- Display the close bracket if this is the last citation. -->
          <xsl:if test="/b:Citation/b:LastAuthor">
            <xsl:value-of select="$params/citation/closebracket" disable-output-escaping="yes"></xsl:value-of>
          </xsl:if>

        </p>
      </body>
    </html>

  </xsl:template>

  <!-- Formats the footnote citation. -->
  <xsl:template name="format-footnote-citation">

    <!-- Generate an XML node-set from the formatting data. -->
    <xsl:variable name="params" select="msxsl:node-set($data)"></xsl:variable>

    <html xmlns="http://www.w3.org/TR/REC-html40">
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"></meta>
      </head>
      <body>
        <p class="MsoBibliography">

          <!-- Display the open bracket if this is the first citation. -->
          <xsl:if test="/b:FootnoteCitation/b:FirstAuthor">
            <xsl:value-of select="$params/footnotecitation/openbracket" disable-output-escaping="yes"></xsl:value-of>
          </xsl:if>

          <!-- Not handled: MinAuthors, SameAuthors, RepeatedAuthor. -->
          <xsl:variable name="citation">
            <!-- Get the format string. -->
            <xsl:variable name="format">
              <xsl:variable name="type" select="/b:FootnoteCitation/b:Source/b:Type"></xsl:variable>
              <xsl:variable name="sourcetype" select="/b:FootnoteCitation/b:Source/b:SourceType"></xsl:variable>

              <xsl:choose>
                <!-- If there is no source type, its a placeholder. -->
                <xsl:when test="string-length($sourcetype) = 0 and string-length(msxsl:node-set($data)/footnotecitation/source[@type = 'Placeholder']/format) &gt; 0">
                  <xsl:value-of select="msxsl:node-set($data)/footnotecitation/source[@type = 'Placeholder']/format"></xsl:value-of>
                </xsl:when>
                <!-- Go for the type element if available. -->
                <xsl:when test="string-length($type) &gt; 0 and string-length(msxsl:node-set($data)/footnotecitation/source[@type = $type]/format) &gt; 0 ">
                  <xsl:value-of select="msxsl:node-set($data)/footnotecitation/source[@type = $type]/format"></xsl:value-of>
                </xsl:when>
                <!-- Else go for the source type element if available. -->
                <xsl:when test="string-length(msxsl:node-set($data)/footnotecitation/source[@type = $sourcetype]/format) &gt; 0 ">
                  <xsl:value-of select="msxsl:node-set($data)/footnotecitation/source[@type = $sourcetype]/format"></xsl:value-of>
                </xsl:when>
                <!-- Else display error message. -->
                <xsl:otherwise>
                  <xsl:if test="msxsl:node-set($data)/general/display_errors = 'yes'">
                    <xsl:text>&lt;b&gt;Unsupported </xsl:text>
                    <xsl:if test="string-length($type) &gt; 0">
                      <xsl:text>type (</xsl:text>
                      <xsl:value-of select="$type"></xsl:value-of>
                      <xsl:text>) and </xsl:text>
                    </xsl:if>
                    <xsl:text>source type (</xsl:text>
                    <xsl:value-of select="$sourcetype"></xsl:value-of>
                    <xsl:text>) for source </xsl:text>
                    <xsl:value-of select="/b:FootnoteCitation/b:Source/b:Tag"></xsl:value-of>
                    <xsl:text>.&lt;/b&gt;</xsl:text>
                  </xsl:if>
                </xsl:otherwise>
              </xsl:choose>

            </xsl:variable>

            <!-- Extend the source. -->
            <xsl:variable name="extendedSource">
              <b:Source>
                <xsl:copy-of select="/b:FootnoteCitation/b:Source/*"></xsl:copy-of>
                <!-- For processing the \f parameter. -->
                <b:FootnoteCitationPrefix>
                  <xsl:value-of select="/b:FootnoteCitation/b:PagePrefix"></xsl:value-of>
                </b:FootnoteCitationPrefix>
                <!-- For processing the \s parameter. -->
                <b:FootnoteCitationSuffix>
                  <xsl:value-of select="/b:FootnoteCitation/b:PageSuffix"></xsl:value-of>
                </b:FootnoteCitationSuffix>
                <!-- For processing the \p parameter. -->
                <b:FootnoteCitationPages>
                  <xsl:value-of select="/b:FootnoteCitation/b:Pages"></xsl:value-of>
                </b:FootnoteCitationPages>
                <!-- For processing the \v parameter. -->
                <b:FootnoteCitationVolume>
                  <xsl:value-of select="/b:FootnoteCitation/b:Volume"></xsl:value-of>
                </b:FootnoteCitationVolume>
              </b:Source>
            </xsl:variable>

            <xsl:call-template name="format-source">
              <xsl:with-param name="format" select="$format"></xsl:with-param>
              <xsl:with-param name="source" select="msxsl:node-set($extendedSource)/b:Source"></xsl:with-param>
              <xsl:with-param name="disallowed">
                <!-- Do not display the authors of the work. -->
                <xsl:if test="/b:FootnoteCitation/b:NoAuthor">
                  <xsl:value-of select="msxsl:node-set($data)/citation/noauthor"></xsl:value-of>
                </xsl:if>
                <!-- Do not display the title of the work. -->
                <xsl:if test="/b:FootnoteCitation/b:NoTitle">
                  <xsl:value-of select="msxsl:node-set($data)/citation/notitle"></xsl:value-of>
                </xsl:if>
                <!-- Do not display the year the work was written or accessed in. -->
                <xsl:if test="/b:FootnoteCitation/b:NoYear">
                  <xsl:value-of select="msxsl:node-set($data)/citation/noyear"></xsl:value-of>
                </xsl:if>
              </xsl:with-param>
            </xsl:call-template>
          </xsl:variable>

          <xsl:value-of select="$citation" disable-output-escaping="yes"></xsl:value-of>
          <!-- end citation -->

          <!-- Display the group separator if this is not the last citation. -->
          <xsl:if test="not(/b:FootnoteCitation/b:LastAuthor)">
            <xsl:value-of select="$params/citation/separator" disable-output-escaping="yes"></xsl:value-of>
          </xsl:if>

          <!-- Display the close bracket if this is the last citation. -->
          <xsl:if test="/b:FootnoteCitation/b:LastAuthor">
            <xsl:value-of select="$params/citation/closebracket" disable-output-escaping="yes"></xsl:value-of>
          </xsl:if>

        </p>
      </body>
    </html>

  </xsl:template>

  <!-- Formats the bibliography. -->
  <xsl:template name="format-bibliography">

    <!-- Extends the b:Source elements of the b:Bibliography element with a b:SortKey. -->
    <xsl:variable name="extendedBib">
      <!-- Create a b:Bibliography element. -->
      <b:Bibliography>
        <!-- Extend all the b:Source elements with a sortkey. -->
        <xsl:for-each select="/b:Bibliography/b:Source">
          <b:Source>
            <!-- Copy the content of the b:Source. -->
            <xsl:copy-of select="./*"></xsl:copy-of>

            <!-- Add a sorting key. -->
            <b:SortKey>
              <xsl:variable name="skey">
                <xsl:variable name="type">
                  <xsl:variable name="temp" select="./b:Type"></xsl:variable>

                  <xsl:choose>
                    <xsl:when test="string-length($temp) &gt; 0 and string-length(msxsl:node-set($data)/bibliography/source[@type = $temp]/sortkey) &gt; 0 ">
                      <xsl:value-of select="$temp"></xsl:value-of>
                    </xsl:when>
                    <xsl:otherwise>
                      <xsl:value-of select="./b:SourceType"></xsl:value-of>
                    </xsl:otherwise>
                  </xsl:choose>
                </xsl:variable>

                <xsl:call-template name="upper-case">
                  <xsl:with-param name="string">
                    <xsl:call-template name="format-source">
                      <xsl:with-param name="format" select="msxsl:node-set($data)/bibliography/source[@type = $type]/sortkey"></xsl:with-param>
                      <xsl:with-param name="source" select="."></xsl:with-param>
                    </xsl:call-template>
                  </xsl:with-param>
                </xsl:call-template>
              </xsl:variable>

              <xsl:choose>
                <!-- If the formatted key is not empty, use that for sorting ... -->
                <xsl:when test="string-length($skey) &gt; 0">
                  <xsl:value-of select="$skey" disable-output-escaping="yes"></xsl:value-of>
                </xsl:when>
                <!-- Otherwise, use the reference order ... -->
                <xsl:otherwise>
                  <xsl:value-of select="substring(concat('00000', ./b:RefOrder), string-length(./b:RefOrder) + 1, 5)"></xsl:value-of>
                </xsl:otherwise>
              </xsl:choose>
            </b:SortKey>
          </b:Source>
        </xsl:for-each>

        <!-- With the exception of the b:Source elements, copy all elements (not really used by the stylesheets). -->
        <!--<xsl:for-each select="/b:Bibliography/*">
          <xsl:if test="local-name() != 'Source'">
            <xsl:element name="{name()}" namespace="{namespace-uri()}">
              <xsl:value-of select="."/>
            </xsl:element>
          </xsl:if>
        </xsl:for-each>-->

      </b:Bibliography>
    </xsl:variable>

    <html xmlns="http://www.w3.org/TR/REC-html40">
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"></meta>
        <style>
          p.MsoBibliography
        </style>
      </head>
      <body>

        <xsl:choose>
          <!-- If there is more than one column, use a table layout. -->
          <xsl:when test="msxsl:node-set($data)/bibliography/columns &gt; 1">
            <xsl:call-template name="format-bibliography-as-table">
              <xsl:with-param name="bibNodeSet" select="msxsl:node-set($extendedBib)"></xsl:with-param>
            </xsl:call-template>
          </xsl:when>
          <!-- Otherwise use a paragraph layout. -->
          <xsl:otherwise>
            <xsl:call-template name="format-bibliography-as-paragraphs">
              <xsl:with-param name="bibNodeSet" select="msxsl:node-set($extendedBib)"></xsl:with-param>
            </xsl:call-template>
          </xsl:otherwise>
        </xsl:choose>

      </body>
    </html>

  </xsl:template>

  <!-- Formats a bibliography as a series of paragraphs. -->
  <xsl:template name="format-bibliography-as-paragraphs">
    <xsl:param name="bibNodeSet"></xsl:param>

    <xsl:for-each select="$bibNodeSet/b:Bibliography/b:Source">
      <xsl:sort select="b:SortKey" data-type="text"></xsl:sort>

      <p class="MsoBibliography">
        <!-- Get the format string. -->
        <xsl:variable name="format">
          <xsl:variable name="type" select="./b:Type"></xsl:variable>
          <xsl:variable name="sourcetype" select="./b:SourceType"></xsl:variable>

          <xsl:choose>
            <!-- If there is no source type, its a placeholder. -->
            <xsl:when test="string-length($sourcetype) = 0 and string-length(msxsl:node-set($data)/bibliography/source[@type = 'Placeholder']/column[@id = '1']/format) &gt; 0">
              <xsl:value-of select="msxsl:node-set($data)/bibliography/source[@type = 'Placeholder']/column[@id = '1']/format"></xsl:value-of>
            </xsl:when>
            <!-- Go for the type element if available. -->
            <xsl:when test="string-length($type) &gt; 0 and string-length(msxsl:node-set($data)/bibliography/source[@type = $type]/column[@id = '1']/format) &gt; 0 ">
              <xsl:value-of select="msxsl:node-set($data)/bibliography/source[@type = $type]/column[@id = '1']/format"></xsl:value-of>
            </xsl:when>
            <!-- Else go for the source type element if available. -->
            <xsl:when test="string-length(msxsl:node-set($data)/bibliography/source[@type = $sourcetype]/column[@id = '1']/format) &gt; 0 ">
              <xsl:value-of select="msxsl:node-set($data)/bibliography/source[@type = $sourcetype]/column[@id = '1']/format"></xsl:value-of>
            </xsl:when>
            <!-- Else display error message. -->
            <xsl:otherwise>
              <xsl:if test="msxsl:node-set($data)/general/display_errors = 'yes'">
                <xsl:text>&lt;b&gt;Unsupported </xsl:text>
                <xsl:if test="string-length($type) &gt; 0">
                  <xsl:text>type (</xsl:text>
                  <xsl:value-of select="$type"></xsl:value-of>
                  <xsl:text>) and </xsl:text>
                </xsl:if>
                <xsl:text>source type (</xsl:text>
                <xsl:value-of select="$sourcetype"></xsl:value-of>
                <xsl:text>) for source </xsl:text>
                <xsl:value-of select="./b:Tag"></xsl:value-of>
                <xsl:text>.&lt;/b&gt;</xsl:text>
              </xsl:if>
            </xsl:otherwise>
          </xsl:choose>

        </xsl:variable>

        <!-- Format the source. -->
        <xsl:variable name="paragraphX">
          <xsl:call-template name="format-source">
            <xsl:with-param name="format" select="$format"></xsl:with-param>
            <xsl:with-param name="source" select="."></xsl:with-param>
          </xsl:call-template>
        </xsl:variable>

        <!-- Convert the formatted source to html. -->
        <xsl:choose>
          <xsl:when test="msxsl:node-set($data)/general/citation_as_link = 'yes'">
            <a name="{./b:Tag}">
              <xsl:value-of select="$paragraphX" disable-output-escaping="yes"></xsl:value-of>
            </a>
          </xsl:when>
          <xsl:otherwise>
            <xsl:value-of select="$paragraphX" disable-output-escaping="yes"></xsl:value-of>
          </xsl:otherwise>
        </xsl:choose>
      </p>

    </xsl:for-each>

  </xsl:template>

  <!-- Formats a bibliography as a table. -->
  <xsl:template name="format-bibliography-as-table">
    <xsl:param name="bibNodeSet"></xsl:param>

    <!-- Empty paragraph hack for table. -->
    <p class="MsoBibliography" style="display:none;">x</p>

    <table width="100%">
      <xsl:for-each select="$bibNodeSet/b:Bibliography/b:Source">
        <xsl:sort select="b:SortKey" data-type="text"></xsl:sort>

        <tr>
          <xsl:call-template name="format-bibliography-table-column">
            <xsl:with-param name="columnId" select="1"></xsl:with-param>
            <xsl:with-param name="source" select="."></xsl:with-param>
          </xsl:call-template>
        </tr>

      </xsl:for-each>
    </table>

    <!-- Empty paragraph hack for table. -->
    <p class="MsoBibliography" style="display:none;">x</p>

  </xsl:template>

  <!-- Formats a single column in a bibliography. -->
  <xsl:template name="format-bibliography-table-column">
    <!-- Source to format. -->
    <xsl:param name="source"></xsl:param>
    <!-- Id of the column to format. -->
    <xsl:param name="columnId"></xsl:param>

    <!-- Generate an XML node-set from the formatting data. -->
    <xsl:variable name="params" select="msxsl:node-set($data)"></xsl:variable>

    <!-- Get the format string. -->
    <xsl:variable name="format">
      <xsl:variable name="type" select="./b:Type"></xsl:variable>
      <xsl:variable name="sourcetype" select="./b:SourceType"></xsl:variable>

      <xsl:choose>
        <!-- If there is no source type, its a placeholder. -->
        <xsl:when test="string-length($sourcetype) = 0 and string-length(msxsl:node-set($data)/bibliography/source[@type = 'Placeholder']/column[@id = $columnId]/format) &gt; 0">
          <xsl:value-of select="msxsl:node-set($data)/bibliography/source[@type = 'Placeholder']/column[@id = $columnId]/format"></xsl:value-of>
        </xsl:when>
        <!-- Go for the type element if available. -->
        <xsl:when test="string-length($type) &gt; 0 and string-length(msxsl:node-set($data)/bibliography/source[@type = $type]/column[@id = $columnId]/format) &gt; 0 ">
          <xsl:value-of select="msxsl:node-set($data)/bibliography/source[@type = $type]/column[@id = $columnId]/format"></xsl:value-of>
        </xsl:when>
        <!-- Else go for the source type element if available. -->
        <xsl:when test="string-length(msxsl:node-set($data)/bibliography/source[@type = $sourcetype]/column[@id = $columnId]/format) &gt; 0 ">
          <xsl:value-of select="msxsl:node-set($data)/bibliography/source[@type = $sourcetype]/column[@id = $columnId]/format"></xsl:value-of>
        </xsl:when>
        <!-- Else display error message. -->
        <xsl:otherwise>
          <xsl:if test="msxsl:node-set($data)/general/display_errors = 'yes'">
            <xsl:text>&lt;b&gt;Unsupported </xsl:text>
            <xsl:if test="string-length($type) &gt; 0">
              <xsl:text>type (</xsl:text>
              <xsl:value-of select="$type"></xsl:value-of>
              <xsl:text>) and </xsl:text>
            </xsl:if>
            <xsl:text>source type (</xsl:text>
            <xsl:value-of select="$sourcetype"></xsl:value-of>
            <xsl:text>) for source </xsl:text>
            <xsl:value-of select="./b:Tag"></xsl:value-of>
            <xsl:text>.&lt;/b&gt;</xsl:text>
          </xsl:if>
        </xsl:otherwise>
      </xsl:choose>

    </xsl:variable>

    <!-- Not really efficient at the moment, but it does the trick so errors can be displayed. -->
    <xsl:variable name="type">
      <xsl:variable name="temp" select="$source/b:Type"></xsl:variable>
      <xsl:variable name="temp2" select="$source/b:SourceType"></xsl:variable>

      <xsl:choose>
        <xsl:when test="string-length($temp2) = 0 and string-length(msxsl:node-set($data)/bibliography/source[@type = $temp2]/column[@id = $columnId]/format) &gt; 0 ">
          <xsl:value-of select="'Placeholder'"></xsl:value-of>
        </xsl:when>
        <xsl:when test="string-length($temp) &gt; 0 and string-length(msxsl:node-set($data)/bibliography/source[@type = $temp]/column[@id = $columnId]/format) &gt; 0 ">
          <xsl:value-of select="$temp"></xsl:value-of>
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="$source/b:SourceType"></xsl:value-of>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>

    <td align="{$params/bibliography/source[@type = $type]/column[@id = $columnId]/halign}" valign="{$params/bibliography/source[@type = $type]/column[@id = $columnId]/valign}">
      <p class="MsoBibliography">

        <xsl:variable name="columnX">
          <xsl:call-template name="format-source">
            <xsl:with-param name="format" select="$format"></xsl:with-param>
            <xsl:with-param name="source" select="$source"></xsl:with-param>
          </xsl:call-template>
        </xsl:variable>

        <!-- Convert the formatted source to html. -->
        <xsl:choose>
          <xsl:when test="msxsl:node-set($data)/general/citation_as_link = 'yes' and $columnId = 1">
            <a name="{$source/b:Tag}">
              <xsl:value-of select="$columnX" disable-output-escaping="yes"></xsl:value-of>
            </a>
          </xsl:when>
          <xsl:otherwise>
            <xsl:value-of select="$columnX" disable-output-escaping="yes"></xsl:value-of>
          </xsl:otherwise>
        </xsl:choose>
      </p>
    </td>

    <!-- Process remaining columns recursively. -->
    <xsl:if test="$params/bibliography/columns &gt; $columnId">
      <xsl:call-template name="format-bibliography-table-column">
        <xsl:with-param name="source" select="$source"></xsl:with-param>
        <xsl:with-param name="columnId" select="$columnId + 1"></xsl:with-param>
      </xsl:call-template>
    </xsl:if>

  </xsl:template>


  <!-- Preprocesses a format string by adding level information to every marker.
       '{' and '}' change into '{level}' and '%' changes into '%level%' where
       level is the depth in the format string.
       This will allow for faster processing by the formatting templates. -->
  <xsl:template name="preprocess-format-string">
    <!-- String to process. -->
    <xsl:param name="string"></xsl:param>

    <!-- Adds balanced brackets around the entire string to help others. -->
    <xsl:text>{0}</xsl:text>

    <xsl:call-template name="preprocess-format-string-part-2">
      <xsl:with-param name="string" select="$string"></xsl:with-param>
    </xsl:call-template>

    <!-- Adds balanced brackets around the entire string to help others. -->
    <xsl:text>{0}</xsl:text>
  </xsl:template>

  <!-- Recursively called helper function for the preprocess-format-string template. -->
  <xsl:template name="preprocess-format-string-part-2">
    <!-- Remaining string. -->
    <xsl:param name="string"></xsl:param>
    <!-- Current level. -->
    <xsl:param name="level" select="0"></xsl:param>

    <xsl:if test="string-length($string) &gt; 0">
      <!-- Get the first character of the remaining string. -->
      <xsl:variable name="firstChar" select="substring($string, 1, 1)"></xsl:variable>

      <xsl:choose>
        <!-- A new level is reached. -->
        <xsl:when test="$firstChar = '{'">
          <!-- Calculate the next level. -->
          <xsl:variable name="nextLevel" select="$level + 1"></xsl:variable>

          <!-- Display a conditional processing marker. -->
          <xsl:text>{</xsl:text>
          <xsl:value-of select="$nextLevel"></xsl:value-of>
          <xsl:text>}</xsl:text>

          <!-- Recursively process the rest of the string. -->
          <xsl:call-template name="preprocess-format-string-part-2">
            <xsl:with-param name="string" select="substring($string, 2)"></xsl:with-param>
            <xsl:with-param name="level" select="$nextLevel"></xsl:with-param>
          </xsl:call-template>
        </xsl:when>
        <!-- The current level is finished. -->
        <xsl:when test="$firstChar = '}'">
          <!-- Display a conditional processing marker. -->
          <xsl:text>{</xsl:text>
          <xsl:value-of select="$level"></xsl:value-of>
          <xsl:text>}</xsl:text>

          <!-- Recursively process the rest of the string. -->
          <xsl:call-template name="preprocess-format-string-part-2">
            <xsl:with-param name="string" select="substring($string, 2)"></xsl:with-param>
            <xsl:with-param name="level" select="$level - 1"></xsl:with-param>
          </xsl:call-template>
        </xsl:when>
        <!-- A variable at the current level starts. -->
        <xsl:when test="$firstChar = '%'">
          <!-- Display a variable processing marker (start of variable). -->
          <xsl:text>%</xsl:text>
          <xsl:value-of select="$level"></xsl:value-of>
          <xsl:text>%</xsl:text>

          <!-- Display the variable (no use in parsing character by character).-->
          <xsl:value-of select="substring-before(substring($string, 2), '%')"></xsl:value-of>

          <!-- Display a variable processing marker (end of variable). -->
          <xsl:text>%</xsl:text>
          <xsl:value-of select="$level"></xsl:value-of>
          <xsl:text>%</xsl:text>

          <!-- Recursively process the rest of the string. -->
          <xsl:call-template name="preprocess-format-string-part-2">
            <xsl:with-param name="string" select="substring-after(substring($string, 2), '%')"></xsl:with-param>
            <xsl:with-param name="level" select="$level"></xsl:with-param>
          </xsl:call-template>
        </xsl:when>
        <xsl:otherwise>
          <!-- Display the first character -->
          <xsl:value-of select="$firstChar"></xsl:value-of>

          <!-- Recursively process the rest of the string. -->
          <xsl:call-template name="preprocess-format-string-part-2">
            <xsl:with-param name="string" select="substring($string, 2)"></xsl:with-param>
            <xsl:with-param name="level" select="$level"></xsl:with-param>
          </xsl:call-template>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:if>
  </xsl:template>

  <!-- Formats a b:Source element. -->
  <xsl:template name="format-source">
    <!-- The b:Source element to format. -->
    <xsl:param name="source"></xsl:param>
    <!-- The format in which to display the b:Source element. -->
    <xsl:param name="format"></xsl:param>
    <!-- b:Source child elements which can not be used (-name1-name2).-->
    <xsl:param name="disallowed"></xsl:param>

    <xsl:call-template name="clean-punctuation">
      <xsl:with-param name="string">
        <xsl:call-template name="format-source-part-2">
          <xsl:with-param name="source" select="$source"></xsl:with-param>
          <xsl:with-param name="format">
            <xsl:call-template name="preprocess-format-string">
              <xsl:with-param name="string" select="$format"></xsl:with-param>
            </xsl:call-template>
          </xsl:with-param>
          <xsl:with-param name="used" select="$disallowed"></xsl:with-param>
        </xsl:call-template>
      </xsl:with-param>
    </xsl:call-template>
  </xsl:template>

  <!-- Helper function for format-source. This function recursively
       resolves the highest level of the first conditional branch of
       the format string. It will return the entire string with at 
       least one less conditional branch.
    -->
  <xsl:template name="format-source-part-2">
    <!-- The b:Source element to format. -->
    <xsl:param name="source"></xsl:param>
    <!-- The preprocessed format in which to display the b:Source element. -->
    <xsl:param name="format"></xsl:param>
    <!-- b:Source child elements which can not be used (-name1-name2-).-->
    <xsl:param name="used"></xsl:param>

    <xsl:choose>
      <!-- Check if there is still conditional processing to do. -->
      <xsl:when test="contains($format, '{')">
        <!-- Get the first level to process. -->
        <xsl:variable name="level" select="substring-before(substring-after($format, '{'), '}')"></xsl:variable>

        <!-- Retrieve the delimeters of the level to process. -->
        <xsl:variable name="delim" select="concat('{', $level,'}')"></xsl:variable>

        <xsl:variable name="current">
          <xsl:call-template name="format-source-part-3">
            <!-- The current source. -->
            <xsl:with-param name="source" select="$source"></xsl:with-param>
            <!-- Retrieve the part that has to be processed during this run. -->
            <xsl:with-param name="format" select="substring-before(substring-after($format, $delim), $delim)"></xsl:with-param>
            <!-- List of variables which can no longer be used. -->
            <xsl:with-param name="used" select="$used"></xsl:with-param>
            <!-- Level of variables to process during this run. -->
            <xsl:with-param name="level" select="$level"></xsl:with-param>
          </xsl:call-template>
        </xsl:variable>

        <!-- Part before the part that was processed in this run. -->
        <xsl:value-of select="substring-before($format, $delim)"></xsl:value-of>

        <!-- Recursively process the entire string. -->
        <xsl:call-template name="format-source-part-2">
          <!-- The same old source. -->
          <xsl:with-param name="source" select="$source"></xsl:with-param>
          <!-- The format string of which one condition is removed. -->
          <xsl:with-param name="format">
            <!-- Result of the part processed in this run. As it can still contain
                 lower level conditional formatting, it has to be reprocessed. -->
            <xsl:value-of select="msxsl:node-set($current)/output"></xsl:value-of>
            <!-- Part after the part that was processed in this run. -->
            <xsl:value-of select="substring-after(substring-after($format, $delim), $delim)"></xsl:value-of>
          </xsl:with-param>
          <!-- Updated used containing now also the variables used in this run. -->
          <xsl:with-param name="used" select="concat($used, msxsl:node-set($current)/used)"></xsl:with-param>
        </xsl:call-template>

      </xsl:when>
      <!-- Otherwise, print the entire leftover string. -->
      <xsl:otherwise>
        <xsl:value-of select="$format"></xsl:value-of>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- Helper function for format-source-part-2. This function recursively
       resolves the variables at the current level.
    -->
  <xsl:template name="format-source-part-3">
    <!-- The b:Source element to format. -->
    <xsl:param name="source"></xsl:param>
    <!-- The preprocessed format in which to display the b:Source element. -->
    <xsl:param name="format"></xsl:param>
    <!-- b:Source child elements which can not be used (-name1-name2-). -->
    <xsl:param name="used"></xsl:param>
    <!-- Level of variables to process. -->
    <xsl:param name="level"></xsl:param>
    <!-- Output so far for this part. -->
    <xsl:param name="outputAtCurrentLevel" select="''"></xsl:param>
    <!-- b:Source child elements which can not be used because they are
         already used at this level. They are an extension to 'used'. -->
    <xsl:param name="usedAtCurrentLevel" select="''"></xsl:param>

    <xsl:choose>
      <!-- Check if further processing has to be done. -->
      <xsl:when test="string-length($format) &gt; 0">
        <!-- Get the delimeter for the current level of parameters to process. -->
        <xsl:variable name="delim" select="concat('%', $level, '%')"></xsl:variable>

        <xsl:choose>
          <!-- Check if there are variables left at the current level to process. -->
          <xsl:when test="contains($format, $delim)">

            <!-- Get the name of the first available element in the first parameter part. -->
            <xsl:variable name="name">
              <xsl:call-template name="get-source-parameter">
                <xsl:with-param name="parameters" select="substring-before(substring-after($format, $delim), $delim)"></xsl:with-param>
                <xsl:with-param name="source" select="$source"></xsl:with-param>
                <xsl:with-param name="used" select="concat($used, $usedAtCurrentLevel)"></xsl:with-param>
              </xsl:call-template>
            </xsl:variable>

            <xsl:variable name="result">
              <xsl:if test="string-length($name) &gt; 0">
                <!-- Get the formatting options for the element. -->
                <xsl:variable name="options">
                  <xsl:call-template name="substring-before-ex">
                    <xsl:with-param name="string" select="substring-after(substring-before(substring-after($format, $delim), $delim), concat($name, ':'))"></xsl:with-param>
                    <xsl:with-param name="delimeter" select="'|'"></xsl:with-param>
                  </xsl:call-template>
                </xsl:variable>

                <xsl:choose>
                  <!-- Handle "or" strings in format; e.g.: {%Year|"n.d."%} -->
                  <xsl:when test="starts-with($name, '&quot;') and substring($name, string-length($name), 1) = '&quot;'">
                    <xsl:value-of select="substring-before(substring-after($name, '&quot;'), '&quot;')"></xsl:value-of>
                  </xsl:when>
                  <!-- Handle non-empty author parameters. -->
                  <xsl:when test="string($source/b:Author/*[local-name() = $name])">
                    <!-- Remove non-numeric characters from the options section (mostly for the r option). -->
                    <xsl:variable name="options2" select="translate($options, translate($options, '0123456789', ''), '')"></xsl:variable>

                    <xsl:choose>
                      <!-- Handle contributors of which the format is specified. -->
                      <xsl:when test="string-length($options2) &gt; 0">
                        <xsl:call-template name="format-contributors-by-params">
                          <xsl:with-param name="contributors" select="$source/b:Author/*[local-name() = $name]"></xsl:with-param>
                          <xsl:with-param name="params" select="msxsl:node-set($data)/namelists/list[@id = $options2]"></xsl:with-param>
                        </xsl:call-template>
                      </xsl:when>
                      <!-- Handle contributor counting. -->
                      <xsl:when test="translate($options, translate($options, 'c', ''), '') = 'c'">
                        <xsl:call-template name="count-contributors">
                          <xsl:with-param name="contributors" select="$source/b:Author/*[local-name() = $name]"></xsl:with-param>
                        </xsl:call-template>
                      </xsl:when>
                      <!-- Handle contributors of which the format is not specified. -->
                      <xsl:otherwise>
                        <xsl:call-template name="format-contributors-by-params">
                          <xsl:with-param name="contributors" select="$source/b:Author/*[local-name() = $name]"></xsl:with-param>
                          <xsl:with-param name="params" select="msxsl:node-set($data)/namelists/list[@id = 0]"></xsl:with-param>
                        </xsl:call-template>
                      </xsl:otherwise>
                    </xsl:choose>
                  </xsl:when>
                  <!-- Handle pages. -->
                  <xsl:when test="$name = 'Pages' and string($source/b:Pages)">
                    <xsl:call-template name="format-pages">
                      <xsl:with-param name="pages" select="$source/b:Pages"></xsl:with-param>
                      <xsl:with-param name="options" select="$options"></xsl:with-param>
                    </xsl:call-template>
                  </xsl:when>
                  <!-- Handle cited pages. -->
                  <xsl:when test="$name = 'CitationPages' and string($source/b:CitationPages)">
                    <xsl:call-template name="format-pages">
                      <xsl:with-param name="pages" select="$source/b:CitationPages"></xsl:with-param>
                      <xsl:with-param name="options" select="$options"></xsl:with-param>
                    </xsl:call-template>
                  </xsl:when>
                  <!-- Handle URLs. -->
                  <xsl:when test="$name = 'URL' and string($source/b:URL)">
                    <xsl:call-template name="format-url">
                      <xsl:with-param name="url" select="$source/b:URL"></xsl:with-param>
                      <xsl:with-param name="options" select="$options"></xsl:with-param>
                    </xsl:call-template>
                  </xsl:when>
                  <!-- Handle years and years accessed. -->
                  <xsl:when test="starts-with($name, 'Year') and string($source/*[local-name() = $name])">
                    <xsl:call-template name="format-year">
                      <xsl:with-param name="year" select="$source/*[local-name() = $name]"></xsl:with-param>
                      <xsl:with-param name="options" select="$options"></xsl:with-param>
                    </xsl:call-template>
                  </xsl:when>
                  <!-- Handle days and days accessed. -->
                  <xsl:when test="starts-with($name, 'Day') and string($source/*[local-name() = $name])">
                    <xsl:call-template name="format-day">
                      <xsl:with-param name="day" select="$source/*[local-name() = $name]"></xsl:with-param>
                      <xsl:with-param name="options" select="$options"></xsl:with-param>
                    </xsl:call-template>
                  </xsl:when>
                  <!-- Handle titles. -->
                  <xsl:when test="contains($name, 'Title') and string($source/*[local-name() = $name])">
                    <!-- Format the title. -->
                    <xsl:variable name="title">
                      <xsl:call-template name="format-title">
                        <xsl:with-param name="title" select="$source/*[local-name() = $name]"></xsl:with-param>
                        <xsl:with-param name="options" select="$options"></xsl:with-param>
                        <xsl:with-param name="delimeter">
                          <xsl:choose>
                            <xsl:when test="string-length(msxsl:node-set($data)/overrides/titles/delimeter) &gt; 0">
                              <xsl:value-of select="msxsl:node-set($data)/overrides/titles/delimeter"></xsl:value-of>
                            </xsl:when>
                            <xsl:otherwise>
                              <xsl:text>:</xsl:text>
                            </xsl:otherwise>
                          </xsl:choose>
                        </xsl:with-param>
                        <xsl:with-param name="articles">
                          <xsl:choose>
                            <xsl:when test="string-length(msxsl:node-set($data)/overrides/titles/articles) &gt; 0">
                              <xsl:value-of select="msxsl:node-set($data)/overrides/titles/articles"></xsl:value-of>
                            </xsl:when>
                            <xsl:otherwise>
                              <xsl:text>-A-AN-THE-</xsl:text>
                            </xsl:otherwise>
                          </xsl:choose>
                        </xsl:with-param>
                      </xsl:call-template>
                    </xsl:variable>
                    <!-- Display the title or %empty% if the title is empty. -->
                    <xsl:choose>
                      <xsl:when test="string-length($title) = 0">
                        <xsl:text>%empty%</xsl:text>
                      </xsl:when>
                      <xsl:otherwise>
                        <xsl:value-of select="$title"></xsl:value-of>
                      </xsl:otherwise>
                    </xsl:choose>
                  </xsl:when>
                  <!-- Handle edition. -->
                  <xsl:when test="$name = 'Edition' and string($source/b:Edition)">
                    <xsl:choose>
                      <xsl:when test="contains($options, 'u')">
                        <xsl:call-template name="upper-case">
                          <xsl:with-param name="string">
                            <xsl:choose>
                              <xsl:when test="contains($options, 'o')">
                                <xsl:call-template name="format-ordinal">
                                  <xsl:with-param name="number" select="$source/b:Edition"></xsl:with-param>
                                  <xsl:with-param name="options" select="$options"></xsl:with-param>
                                </xsl:call-template>
                              </xsl:when>
                              <xsl:otherwise>
                                <xsl:value-of select="$source/b:Edition"></xsl:value-of>
                              </xsl:otherwise>
                            </xsl:choose>
                          </xsl:with-param>
                        </xsl:call-template>
                      </xsl:when>
                      <xsl:when test="contains($options, 'l')">
                        <xsl:call-template name="lower-case">
                          <xsl:with-param name="string">
                            <xsl:choose>
                              <xsl:when test="contains($options, 'o')">
                                <xsl:call-template name="format-ordinal">
                                  <xsl:with-param name="number" select="$source/b:Edition"></xsl:with-param>
                                  <xsl:with-param name="options" select="$options"></xsl:with-param>
                                </xsl:call-template>
                              </xsl:when>
                              <xsl:otherwise>
                                <xsl:value-of select="$source/b:Edition"></xsl:value-of>
                              </xsl:otherwise>
                            </xsl:choose>
                          </xsl:with-param>
                        </xsl:call-template>
                      </xsl:when>
                      <xsl:otherwise>
                        <xsl:choose>
                          <xsl:when test="contains($options, 'o')">
                            <xsl:call-template name="format-ordinal">
                              <xsl:with-param name="number" select="$source/b:Edition"></xsl:with-param>
                              <xsl:with-param name="options" select="$options"></xsl:with-param>
                            </xsl:call-template>
                          </xsl:when>
                          <xsl:otherwise>
                            <xsl:value-of select="$source/b:Edition"></xsl:value-of>
                          </xsl:otherwise>
                        </xsl:choose>
                      </xsl:otherwise>
                    </xsl:choose>
                  </xsl:when>
                  <!-- Handle volume and citation volume. -->
                  <xsl:when test="($name = 'Volume' or $name = 'CitationVolume') and string($source/*[local-name() = $name]) and number($source/*[local-name() = $name]) &gt; 0">
                    <xsl:call-template name="format-number">
                      <xsl:with-param name="number" select="$source/*[local-name() = $name]"></xsl:with-param>
                      <xsl:with-param name="options" select="translate($options, translate($options, 'R', ''), '')"></xsl:with-param>
                    </xsl:call-template>
                  </xsl:when>
                  <!-- Handle months and months accessed. -->
                  <xsl:when test="starts-with($name, 'Month') and string($source/*[local-name() = $name])">
                    <xsl:call-template name="format-month">
                      <xsl:with-param name="month" select="$source/*[local-name() = $name]"></xsl:with-param>
                      <xsl:with-param name="options" select="$options"></xsl:with-param>
                    </xsl:call-template>
                  </xsl:when>
                  <!-- Handle all other non-empty, non-author parameters. -->
                  <xsl:when test="string($source/*[local-name() = $name])">
                    <xsl:choose>
                      <xsl:when test="contains($options, 'u')">
                        <xsl:call-template name="upper-case">
                          <xsl:with-param name="string" select="$source/*[local-name() = $name]"></xsl:with-param>
                        </xsl:call-template>
                      </xsl:when>
                      <xsl:when test="contains($options, 'l')">
                        <xsl:call-template name="lower-case">
                          <xsl:with-param name="string" select="$source/*[local-name() = $name]"></xsl:with-param>
                        </xsl:call-template>
                      </xsl:when>
                      <xsl:otherwise>
                        <xsl:value-of select="$source/*[local-name() = $name]"></xsl:value-of>
                      </xsl:otherwise>
                    </xsl:choose>
                  </xsl:when>
                </xsl:choose>
              </xsl:if>
              <!-- Mark the element as being empty. -->
              <xsl:if test="string-length($name) = 0">
                <xsl:text>%empty%</xsl:text>
              </xsl:if>
            </xsl:variable>

            <xsl:if test="$result != '%empty%'">
              <xsl:call-template name="format-source-part-3">
                <xsl:with-param name="source" select="$source"></xsl:with-param>
                <!-- Process the part remaining after the current part. -->
                <xsl:with-param name="format" select="substring-after(substring-after($format, $delim), $delim)"></xsl:with-param>
                <xsl:with-param name="level" select="$level"></xsl:with-param>
                <xsl:with-param name="used" select="$used"></xsl:with-param>
                <xsl:with-param name="outputAtCurrentLevel">
                  <xsl:value-of select="$outputAtCurrentLevel"></xsl:value-of>
                  <!-- Output before the result of this round. -->
                  <xsl:value-of select="substring-before($format, $delim)"></xsl:value-of>
                  <!-- Result from this round-->
                  <xsl:value-of select="$result"></xsl:value-of>
                </xsl:with-param>
                <xsl:with-param name="usedAtCurrentLevel">
                  <xsl:value-of select="$usedAtCurrentLevel"></xsl:value-of>
                  <!-- Used this round. -->
                  <xsl:if test="string-length($name) &gt; 0">
                    <!-- Get the formatting options for the element. -->
                    <xsl:variable name="options">
                      <xsl:call-template name="substring-before-ex">
                        <xsl:with-param name="string" select="substring-after(substring-before(substring-after($format, $delim), $delim), concat($name, ':'))"></xsl:with-param>
                        <xsl:with-param name="delimeter" select="'|'"></xsl:with-param>
                      </xsl:call-template>
                    </xsl:variable>
                    <!-- Only add the variable to the used list if the 'r' option is not used. -->
                    <xsl:if test="not(contains($options, 'r'))">
                      <xsl:text>-</xsl:text>
                      <xsl:value-of select="$name"></xsl:value-of>
                      <xsl:text>-</xsl:text>
                    </xsl:if>
                  </xsl:if>
                </xsl:with-param>
              </xsl:call-template>
            </xsl:if>
          </xsl:when>
          <!-- Otherwise there are no variables left to process. -->
          <xsl:otherwise>
            <xsl:call-template name="format-source-part-3">
              <xsl:with-param name="format" select="''"></xsl:with-param>
              <xsl:with-param name="outputAtCurrentLevel" select="concat($outputAtCurrentLevel, $format)"></xsl:with-param>
              <xsl:with-param name="usedAtCurrentLevel" select="$usedAtCurrentLevel"></xsl:with-param>
            </xsl:call-template>
          </xsl:otherwise>
        </xsl:choose>

      </xsl:when>
      <!-- Otherwise, finish the output of the function. -->
      <xsl:otherwise>
        <xsl:choose>
          <!-- Check if anything has to be send to the output and if the used variables section has to be updated. -->
          <xsl:when test="not(contains($outputAtCurrentLevel, '%empty%')) and string-length($outputAtCurrentLevel) &gt; 0">
            <output>
              <xsl:value-of select="$outputAtCurrentLevel"></xsl:value-of>
            </output>
            <used>
              <xsl:value-of select="$usedAtCurrentLevel"></xsl:value-of>
            </used>
          </xsl:when>
          <!-- Otherwise, nothing has to be send to the output. The used variables stay used. -->
          <xsl:otherwise>
            <output></output>
            <used></used>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:otherwise>
    </xsl:choose>

  </xsl:template>

  <!-- Retrieves the first non empty source parameter name. -->
  <xsl:template name="get-source-parameter">
    <!-- A string with one or more parameters separated by '|'. -->
    <xsl:param name="parameters"></xsl:param>
    <!-- The b:Source element. -->
    <xsl:param name="source"></xsl:param>
    <!-- A string with no longer available child elements of the b:Source element (-name1-name2). -->
    <xsl:param name="used"></xsl:param>

    <xsl:if test="string-length($parameters) &gt; 0">
      <!-- Get the name of the first parameter. -->
      <xsl:variable name="name">
        <xsl:call-template name="substring-before-ex">
          <xsl:with-param name="string">
            <xsl:call-template name="substring-before-ex">
              <xsl:with-param name="string" select="$parameters"></xsl:with-param>
              <xsl:with-param name="delimeter" select="'|'"></xsl:with-param>
            </xsl:call-template>
          </xsl:with-param>
          <xsl:with-param name="delimeter" select="':'"></xsl:with-param>
        </xsl:call-template>
      </xsl:variable>

      <!-- Check if the name is one of a valid parameter. -->
      <xsl:choose>
        <!-- If it is a valid parameter, stop the processing. -->
        <!--   Remark: a quoted string is a valid parameter; e.g.: {%Year|"n.d."%} -->
        <xsl:when test="starts-with($name, '&quot;') and substring($name, string-length($name), 1) = '&quot;' and not(contains($used, concat('-', $name)))">
          <xsl:value-of select="$name"></xsl:value-of>
        </xsl:when>
        <!--   Remark: the b:Author hack is necessary to get around the b:Source/b:Author/b:Author problem. -->
        <xsl:when test="(($name != 'Author' and string($source/*[local-name() = $name])) or string($source/b:Author/*[local-name() = $name])) and not(contains($used, concat('-', $name)))">
          <xsl:value-of select="$name"></xsl:value-of>
        </xsl:when>
        <!-- Otherwise, process the remainder of the parameters. -->
        <xsl:otherwise>
          <xsl:call-template name="get-source-parameter">
            <xsl:with-param name="parameters" select="substring-after($parameters, '|')"></xsl:with-param>
            <xsl:with-param name="source" select="$source"></xsl:with-param>
            <xsl:with-param name="used" select="$used"></xsl:with-param>
          </xsl:call-template>
        </xsl:otherwise>
      </xsl:choose>

    </xsl:if>

  </xsl:template>

  <!-- Formats a b:Person element. -->
  <xsl:template name="format-person">
    <!-- The b:Person element to format. -->
    <xsl:param name="person"></xsl:param>
    <!-- The format in which to display the b:Person element. -->
    <xsl:param name="format"></xsl:param>

    <xsl:call-template name="format-person-part-2">
      <xsl:with-param name="person" select="$person"></xsl:with-param>
      <xsl:with-param name="format">
        <xsl:call-template name="preprocess-format-string">
          <xsl:with-param name="string" select="$format"></xsl:with-param>
        </xsl:call-template>
      </xsl:with-param>
    </xsl:call-template>

  </xsl:template>

  <!-- Helper function for format-person. This function recursively
       resolves the highest level of the first conditional branch of
       the format string. It will return the entire string with at 
       least one less conditional branch.
    -->
  <xsl:template name="format-person-part-2">
    <!-- The b:Person element to format. -->
    <xsl:param name="person"></xsl:param>
    <!-- The format in which to display the b:Person element. -->
    <xsl:param name="format"></xsl:param>
    <!-- b:Person child elements which can not be used. -->
    <xsl:param name="used"></xsl:param>

    <xsl:choose>
      <!-- Check if there is still conditional processing to do. -->
      <xsl:when test="contains($format, '{')">
        <!-- Get the first level to process. -->
        <xsl:variable name="level" select="substring-before(substring-after($format, '{'), '}')"></xsl:variable>

        <!-- Retrieve the delimeters of the level to process. -->
        <xsl:variable name="delim" select="concat('{', $level,'}')"></xsl:variable>

        <xsl:variable name="current">
          <xsl:call-template name="format-person-part-3">
            <!-- The current source. -->
            <xsl:with-param name="person" select="$person"></xsl:with-param>
            <!-- Retrieve the part that has to be processed during this run. -->
            <xsl:with-param name="format" select="substring-before(substring-after($format, $delim), $delim)"></xsl:with-param>
            <!-- List of variables which can no longer be used. -->
            <xsl:with-param name="used" select="$used"></xsl:with-param>
            <!-- Level of variables to process during this run. -->
            <xsl:with-param name="level" select="$level"></xsl:with-param>
          </xsl:call-template>
        </xsl:variable>

        <!-- Part before the part that was processed in this run. -->
        <xsl:value-of select="substring-before($format, $delim)"></xsl:value-of>

        <!-- Recursively process the entire string. -->
        <xsl:call-template name="format-person-part-2">
          <!-- The same old source. -->
          <xsl:with-param name="person" select="$person"></xsl:with-param>
          <!-- The format string of which one condition is removed. -->
          <xsl:with-param name="format">
            <!-- Result of the part processed in this run. As it can still contain
                 lower level conditional formatting, it has to be reprocessed. -->
            <xsl:value-of select="msxsl:node-set($current)/output"></xsl:value-of>
            <!-- Part after the part that was processed in this run. -->
            <xsl:value-of select="substring-after(substring-after($format, $delim), $delim)"></xsl:value-of>
          </xsl:with-param>
          <!-- Updated used containing now also the variables used in this run. -->
          <xsl:with-param name="used" select="concat($used, msxsl:node-set($current)/used)"></xsl:with-param>
        </xsl:call-template>

      </xsl:when>
      <!-- Otherwise, print the entire leftover string. -->
      <xsl:otherwise>
        <xsl:value-of select="$format"></xsl:value-of>
      </xsl:otherwise>
    </xsl:choose>

  </xsl:template>

  <!-- Helper function for format-source-part-2. This function recursively
       resolves the variables at the current level.
    -->
  <xsl:template name="format-person-part-3">
    <!-- The b:Source element to format. -->
    <xsl:param name="person"></xsl:param>
    <!-- The preprocessed format in which to display the b:Source element. -->
    <xsl:param name="format"></xsl:param>
    <!-- b:Source child elements which can not be used (-name1-name2-). -->
    <xsl:param name="used"></xsl:param>
    <!-- Level of variables to process. -->
    <xsl:param name="level"></xsl:param>
    <!-- Output so far for this part. -->
    <xsl:param name="outputAtCurrentLevel" select="''"></xsl:param>
    <!-- b:Source child elements which can not be used because they are
         already used at this level. They are an extension to 'used'. -->
    <xsl:param name="usedAtCurrentLevel" select="''"></xsl:param>

    <xsl:choose>
      <!-- Check if further processing has to be done. -->
      <xsl:when test="string-length($format) &gt; 0">
        <!-- Get the delimeter for the current level of parameters to process. -->
        <xsl:variable name="delim" select="concat('%', $level, '%')"></xsl:variable>

        <xsl:choose>
          <!-- Check if there are variables left at the current level to process. -->
          <xsl:when test="contains($format, $delim)">

            <!-- Get the name of the first available element in the first parameter part. -->
            <xsl:variable name="name">
              <xsl:call-template name="get-person-parameter">
                <xsl:with-param name="parameters" select="substring-before(substring-after($format, $delim), $delim)"></xsl:with-param>
                <xsl:with-param name="person" select="$person"></xsl:with-param>
                <xsl:with-param name="used" select="concat($used, $usedAtCurrentLevel)"></xsl:with-param>
              </xsl:call-template>
            </xsl:variable>

            <xsl:variable name="result">
              <xsl:if test="string-length($name) &gt; 0">
                <!-- Get the formatting options for the element. -->
                <xsl:variable name="options">
                  <xsl:call-template name="substring-before-ex">
                    <xsl:with-param name="string" select="substring-after(substring-before(substring-after($format, $delim), $delim), concat($name, ':'))"></xsl:with-param>
                    <xsl:with-param name="delimeter" select="'|'"></xsl:with-param>
                  </xsl:call-template>
                </xsl:variable>

                <!-- Set case correctly. -->
                <xsl:variable name="case">
                  <xsl:choose>
                    <xsl:when test="contains($options, 'u')">
                      <xsl:call-template name="upper-case">
                        <xsl:with-param name="string" select="$person/*[local-name() = $name]"></xsl:with-param>
                      </xsl:call-template>
                    </xsl:when>
                    <xsl:when test="contains($options, 'l')">
                      <xsl:call-template name="lower-case">
                        <xsl:with-param name="string" select="$person/*[local-name() = $name]"></xsl:with-param>
                      </xsl:call-template>
                    </xsl:when>
                    <xsl:otherwise>
                      <xsl:value-of select="$person/*[local-name() = $name]"></xsl:value-of>
                    </xsl:otherwise>
                  </xsl:choose>
                </xsl:variable>

                <!-- Handle abbreviation. -->
                <xsl:choose>
                  <xsl:when test="contains($options, 'a')">
                    <xsl:call-template name="abbreviate-name">
                      <xsl:with-param name="name" select="$case"></xsl:with-param>
                      <xsl:with-param name="keepDashes">
                        <xsl:choose>
                          <xsl:when test="contains($options, 'd')">
                            <xsl:text>1</xsl:text>
                          </xsl:when>
                          <xsl:otherwise>
                            <xsl:text>0</xsl:text>
                          </xsl:otherwise>
                        </xsl:choose>
                      </xsl:with-param>
                      <xsl:with-param name="withPeriods">
                        <xsl:choose>
                          <xsl:when test="contains($options, 'p')">
                            <xsl:text>1</xsl:text>
                          </xsl:when>
                          <xsl:otherwise>
                            <xsl:text>0</xsl:text>
                          </xsl:otherwise>
                        </xsl:choose>
                      </xsl:with-param>
                      <xsl:with-param name="keepSpaces">
                        <xsl:choose>
                          <xsl:when test="contains($options, 's')">
                            <xsl:text>1</xsl:text>
                          </xsl:when>
                          <xsl:otherwise>
                            <xsl:text>0</xsl:text>
                          </xsl:otherwise>
                        </xsl:choose>
                      </xsl:with-param>
                    </xsl:call-template>
                  </xsl:when>
                  <xsl:otherwise>
                    <xsl:value-of select="$case"></xsl:value-of>
                  </xsl:otherwise>
                </xsl:choose>

              </xsl:if>
              <!-- Mark the element as being empty. -->
              <xsl:if test="string-length($name) = 0">
                <xsl:text>%empty%</xsl:text>
              </xsl:if>
            </xsl:variable>

            <xsl:if test="$result != '%empty%'">
              <xsl:call-template name="format-person-part-3">
                <xsl:with-param name="person" select="$person"></xsl:with-param>
                <!-- Process the part remaining after the current part. -->
                <xsl:with-param name="format" select="substring-after(substring-after($format, $delim), $delim)"></xsl:with-param>
                <xsl:with-param name="level" select="$level"></xsl:with-param>
                <xsl:with-param name="used" select="$used"></xsl:with-param>
                <xsl:with-param name="outputAtCurrentLevel">
                  <xsl:value-of select="$outputAtCurrentLevel"></xsl:value-of>
                  <!-- Output before the result of this round. -->
                  <xsl:value-of select="substring-before($format, $delim)"></xsl:value-of>
                  <!-- Result from this round-->
                  <xsl:value-of select="$result"></xsl:value-of>
                </xsl:with-param>
                <xsl:with-param name="usedAtCurrentLevel">
                  <xsl:value-of select="$usedAtCurrentLevel"></xsl:value-of>
                  <!-- Used this round. -->
                  <xsl:if test="string-length($name) &gt; 0">
                    <!-- Get the formatting options for the element. -->
                    <xsl:variable name="options">
                      <xsl:call-template name="substring-before-ex">
                        <xsl:with-param name="string" select="substring-after(substring-before(substring-after($format, $delim), $delim), concat($name, ':'))"></xsl:with-param>
                        <xsl:with-param name="delimeter" select="'|'"></xsl:with-param>
                      </xsl:call-template>
                    </xsl:variable>
                    <!-- Only add the variable to the used list if the 'r' option is not used. -->
                    <xsl:if test="not(contains($options, 'r'))">
                      <xsl:text>-</xsl:text>
                      <xsl:value-of select="$name"></xsl:value-of>
                      <xsl:text>-</xsl:text>
                    </xsl:if>
                  </xsl:if>
                </xsl:with-param>
              </xsl:call-template>
            </xsl:if>
          </xsl:when>
          <!-- Otherwise there are no variables left to process. -->
          <xsl:otherwise>
            <xsl:call-template name="format-person-part-3">
              <xsl:with-param name="format" select="''"></xsl:with-param>
              <xsl:with-param name="outputAtCurrentLevel" select="concat($outputAtCurrentLevel, $format)"></xsl:with-param>
              <xsl:with-param name="usedAtCurrentLevel" select="$usedAtCurrentLevel"></xsl:with-param>
            </xsl:call-template>
          </xsl:otherwise>
        </xsl:choose>

      </xsl:when>
      <!-- Otherwise, finish the output of the function. -->
      <xsl:otherwise>
        <xsl:choose>
          <!-- Check if anything has to be send to the output and if the used variables section has to be updated. -->
          <xsl:when test="not(contains($outputAtCurrentLevel, '%empty%')) and string-length($outputAtCurrentLevel) &gt; 0">
            <output>
              <xsl:value-of select="$outputAtCurrentLevel"></xsl:value-of>
            </output>
            <used>
              <xsl:value-of select="$usedAtCurrentLevel"></xsl:value-of>
            </used>
          </xsl:when>
          <!-- Otherwise, nothing has to be send to the output. The used variables stay used. -->
          <xsl:otherwise>
            <output></output>
            <used></used>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:otherwise>
    </xsl:choose>

  </xsl:template>

  <!-- Retrieves the first non empty person parameter name. -->
  <xsl:template name="get-person-parameter">
    <!-- A string with one or more parameters separated by '|'. -->
    <xsl:param name="parameters"></xsl:param>
    <!-- The b:Person element. -->
    <xsl:param name="person"></xsl:param>
    <!-- A string with no longer available child elements of the b:Person element (-name1-name2). -->
    <xsl:param name="used"></xsl:param>

    <xsl:if test="string-length($parameters) &gt; 0">

      <!-- Get the name of the first parameter. -->
      <xsl:variable name="name">
        <xsl:call-template name="substring-before-ex">
          <xsl:with-param name="string">
            <xsl:call-template name="substring-before-ex">
              <xsl:with-param name="string" select="$parameters"></xsl:with-param>
              <xsl:with-param name="delimeter" select="'|'"></xsl:with-param>
            </xsl:call-template>
          </xsl:with-param>
          <xsl:with-param name="delimeter" select="':'"></xsl:with-param>
        </xsl:call-template>
      </xsl:variable>

      <!-- Check if the name is one of a valid parameter. -->
      <xsl:choose>
        <!-- If it is a valid parameter, stop the processing. -->
        <xsl:when test="string($person/*[local-name() = $name]) and not(contains($used, concat('-', $name)))">
          <xsl:value-of select="$name"></xsl:value-of>
        </xsl:when>
        <!-- Otherwise, process the remainder of the parameters. -->
        <xsl:otherwise>
          <xsl:call-template name="get-person-parameter">
            <xsl:with-param name="parameters" select="substring-after($parameters, '|')"></xsl:with-param>
            <xsl:with-param name="person" select="$person"></xsl:with-param>
            <xsl:with-param name="used" select="$used"></xsl:with-param>
          </xsl:call-template>
        </xsl:otherwise>
      </xsl:choose>

    </xsl:if>

  </xsl:template>

  <!-- Formats a b:Corporate element. -->
  <xsl:template name="format-corporate">
    <!-- The b:Corporate element to format. -->
    <xsl:param name="corporate"></xsl:param>
    <!-- The format in which to display the b:Corporate element. -->
    <xsl:param name="format"></xsl:param>

    <!-- Simplified version of the other formatting functions. -->

    <xsl:variable name="temp">
      <!-- Temporarely variable. -->
      <xsl:variable name="remainder" select="substring-after($format, '%')"></xsl:variable>

      <!-- The part before the parameter. -->
      <xsl:value-of select="substring-before($format, '%')"></xsl:value-of>

      <!-- Get the options. -->
      <xsl:variable name="options">
        <xsl:call-template name="lower-case">
          <xsl:with-param name="string" select="substring-after(substring-before($remainder, '%'), ':')"></xsl:with-param>
        </xsl:call-template>
      </xsl:variable>

      <!-- Format the corporate parameter. -->
      <xsl:choose>
        <xsl:when test="contains($options, 'u')">
          <xsl:call-template name="upper-case">
            <xsl:with-param name="string" select="$corporate"></xsl:with-param>
          </xsl:call-template>
        </xsl:when>
        <xsl:when test="contains($options, 'l')">
          <xsl:call-template name="lower-case">
            <xsl:with-param name="string" select="$corporate"></xsl:with-param>
          </xsl:call-template>
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="$corporate"></xsl:value-of>
        </xsl:otherwise>
      </xsl:choose>

      <!-- The part after the parameter. -->
      <xsl:value-of select="substring-after($remainder, '%')"></xsl:value-of>
    </xsl:variable>

    <xsl:value-of select="translate($temp, '{}', '')"></xsl:value-of>

  </xsl:template>

  <!-- Formats a set of contributors by means of parameters. -->
  <xsl:template name="format-contributors-by-params">
    <!-- A set containing either a b:Corporate or a b:NameList element. -->
    <xsl:param name="contributors"></xsl:param>
    <!-- An XML tree containing formatting information, the following
         elements should be provided:
          <format type="...">
            <single_prefix></single_prefix>
            <multi_prefix></multi_prefix>
            <corporate></corporate>
            <first_person></first_person>
            <other_persons></other_persons>
            <separator_between_if_two></separator_between_if_two>
            <separator_between_if_more_than_two></separator_between_if_more_than_two>
            <separator_before_last></separator_before_last>
            <max_number_of_persons_to_display></max_number_of_persons_to_display>
            <number_of_persons_to_display_if_more_than_max></number_of_persons_to_display_if_more_than_max>
            <overflow></overflow>
            <single_suffix></single_suffix>
            <multi_suffix></multi_suffix>
          </format>         
      -->
    <xsl:param name="params"></xsl:param>

    <xsl:choose>
      <!-- b:Corporate contributor. -->
      <xsl:when test="string-length($contributors/b:Corporate) &gt; 0">
        <!-- Display the single prefix. -->
        <xsl:value-of select="$params/single_prefix"></xsl:value-of>

        <!-- Display the formatted b:Corporate element. -->
        <xsl:call-template name="format-corporate">
          <xsl:with-param name="corporate" select="$contributors/b:Corporate"></xsl:with-param>
          <xsl:with-param name="format" select="$params/corporate"></xsl:with-param>
        </xsl:call-template>

        <!-- Display the single suffix. -->
        <xsl:value-of select="$params/single_suffix"></xsl:value-of>
      </xsl:when>
      <!-- b:NameList contributor(s). -->
      <xsl:otherwise>
        <!-- Count the number of b:Person elements in the node-set. -->
        <xsl:variable name="numPersons" select="count($contributors/b:NameList/b:Person)"></xsl:variable>

        <xsl:if test="$numPersons &gt; 0">
          <!-- Calculate the number of b:Person elements to display. -->
          <xsl:variable name="numDisplay">
            <xsl:choose>
              <xsl:when test="$numPersons &gt; $params/max_number_of_persons_to_display">
                <xsl:value-of select="$params/number_of_persons_to_display_if_more_than_max"></xsl:value-of>
              </xsl:when>
              <xsl:otherwise>
                <xsl:value-of select="$numPersons"></xsl:value-of>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:variable>

          <!-- Display the prefix. -->
          <xsl:choose>
            <xsl:when test="$numPersons &gt; 1">
              <!-- Display the multi prefix. -->
              <xsl:value-of select="$params/multi_prefix"></xsl:value-of>
            </xsl:when>
            <xsl:otherwise>
              <!-- Display the single prefix. -->
              <xsl:value-of select="$params/single_prefix"></xsl:value-of>
            </xsl:otherwise>
          </xsl:choose>

          <!-- Handle all the b:Person elements. -->
          <xsl:for-each select="$contributors/b:NameList/b:Person">
            <!-- The position of the current b:Person element. -->
            <xsl:variable name="pos" select="position()"></xsl:variable>

            <xsl:choose>
              <xsl:when test="position() &gt; $numDisplay"></xsl:when>
              <xsl:when test="position() = 1">
                <xsl:call-template name="format-person">
                  <xsl:with-param name="person" select="."></xsl:with-param>
                  <xsl:with-param name="format" select="$params/first_person"></xsl:with-param>
                </xsl:call-template>
              </xsl:when>
              <xsl:when test="position() = 2 and $numPersons = 2">
                <xsl:value-of select="$params/separator_between_if_two"></xsl:value-of>
                <xsl:call-template name="format-person">
                  <xsl:with-param name="person" select="."></xsl:with-param>
                  <xsl:with-param name="format" select="$params/other_persons"></xsl:with-param>
                </xsl:call-template>
              </xsl:when>
              <xsl:when test="(position() = $numDisplay) and not($numPersons &gt; $numDisplay)">
                <xsl:value-of select="$params/separator_before_last"></xsl:value-of>
                <xsl:call-template name="format-person">
                  <xsl:with-param name="person" select="."></xsl:with-param>
                  <xsl:with-param name="format" select="$params/other_persons"></xsl:with-param>
                </xsl:call-template>
              </xsl:when>
              <xsl:otherwise>
                <xsl:value-of select="$params/separator_between_if_more_than_two"></xsl:value-of>
                <xsl:call-template name="format-person">
                  <xsl:with-param name="person" select="."></xsl:with-param>
                  <xsl:with-param name="format" select="$params/other_persons"></xsl:with-param>
                </xsl:call-template>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:for-each>

          <!-- Handle overflow. -->
          <xsl:if test="$numPersons &gt; $numDisplay">
            <xsl:value-of select="$params/overflow"></xsl:value-of>
          </xsl:if>

          <!-- Display the suffix. -->
          <xsl:choose>
            <xsl:when test="$numPersons &gt; 1">
              <!-- Display the multi suffix. -->
              <xsl:value-of select="$params/multi_suffix"></xsl:value-of>
            </xsl:when>
            <xsl:otherwise>
              <!-- Display the single suffix. -->
              <xsl:value-of select="$params/single_suffix"></xsl:value-of>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:if>

      </xsl:otherwise>
    </xsl:choose>

  </xsl:template>

  <!-- Abbreviate a name (or part of a name if called recursively). -->
  <xsl:template name="abbreviate-name">
    <!-- Name or part of name to abbreviate. -->
    <xsl:param name="name"></xsl:param>
    <!-- Flag indicating if abbreviated parts should be followed by a period (1) or not (0). -->
    <xsl:param name="withPeriods" select="1"></xsl:param>
    <!-- Flag indicating if spaces between abbreviated parts should be kept (1) or not (0). -->
    <xsl:param name="keepSpaces" select="1"></xsl:param>
    <!-- Flag indicating if dashes between abbreviated parts should be kept (1) or not (0). -->
    <xsl:param name="keepDashes" select="1"></xsl:param>

    <xsl:choose>
      <!-- Handle 'A-B' -->
      <xsl:when test="contains($name, '-')">
        <xsl:call-template name="abbreviate-name">
          <xsl:with-param name="name" select="substring-before(normalize-space($name), '-')"></xsl:with-param>
          <xsl:with-param name="withPeriods" select="$withPeriods"></xsl:with-param>
          <xsl:with-param name="keepSpaces" select="$keepSpaces"></xsl:with-param>
          <xsl:with-param name="keepDashes" select="$keepDashes"></xsl:with-param>
        </xsl:call-template>
        <xsl:if test="$keepDashes = 1">
          <xsl:text>-</xsl:text>
        </xsl:if>
        <xsl:call-template name="abbreviate-name">
          <xsl:with-param name="name" select="substring-after(normalize-space($name), '-')"></xsl:with-param>
          <xsl:with-param name="withPeriods" select="$withPeriods"></xsl:with-param>
          <xsl:with-param name="keepSpaces" select="$keepSpaces"></xsl:with-param>
          <xsl:with-param name="keepDashes" select="$keepDashes"></xsl:with-param>
        </xsl:call-template>
      </xsl:when>
      <!-- Handle 'A B' -->
      <xsl:when test="contains($name, ' ')">
        <xsl:call-template name="abbreviate-name">
          <xsl:with-param name="name" select="substring-before(normalize-space($name), ' ')"></xsl:with-param>
          <xsl:with-param name="withPeriods" select="$withPeriods"></xsl:with-param>
          <xsl:with-param name="keepSpaces" select="$keepSpaces"></xsl:with-param>
          <xsl:with-param name="keepDashes" select="$keepDashes"></xsl:with-param>
        </xsl:call-template>
        <xsl:if test="$keepSpaces = 1">
          <xsl:text> </xsl:text>
        </xsl:if>
        <xsl:call-template name="abbreviate-name">
          <xsl:with-param name="name" select="substring-after(normalize-space($name), ' ')"></xsl:with-param>
          <xsl:with-param name="withPeriods" select="$withPeriods"></xsl:with-param>
          <xsl:with-param name="keepSpaces" select="$keepSpaces"></xsl:with-param>
          <xsl:with-param name="keepDashes" select="$keepDashes"></xsl:with-param>
        </xsl:call-template>
      </xsl:when>
      <!-- Handle 'A.B.'-->
      <xsl:when test="contains($name, '.') and string-length(substring-after($name, '.')) &gt; 0">
        <xsl:call-template name="abbreviate-name">
          <xsl:with-param name="name" select="substring-before(normalize-space($name), '.')"></xsl:with-param>
          <xsl:with-param name="withPeriods" select="$withPeriods"></xsl:with-param>
          <xsl:with-param name="keepSpaces" select="$keepSpaces"></xsl:with-param>
          <xsl:with-param name="keepDashes" select="$keepDashes"></xsl:with-param>
        </xsl:call-template>
        <xsl:if test="$keepSpaces = 1">
          <xsl:text> </xsl:text>
        </xsl:if>
        <xsl:call-template name="abbreviate-name">
          <xsl:with-param name="name" select="substring-after(normalize-space($name), '.')"></xsl:with-param>
          <xsl:with-param name="withPeriods" select="$withPeriods"></xsl:with-param>
          <xsl:with-param name="keepSpaces" select="$keepSpaces"></xsl:with-param>
          <xsl:with-param name="keepDashes" select="$keepDashes"></xsl:with-param>
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
        <xsl:if test="string-length($name) &gt; 0">
          <xsl:value-of select="substring($name,1,1)"></xsl:value-of>
          <xsl:if test="$withPeriods = 1">
            <xsl:text>.</xsl:text>
          </xsl:if>
        </xsl:if>
      </xsl:otherwise>
    </xsl:choose>

  </xsl:template>

  <!-- Abbreviates a string to its capital letters only. -->
  <xsl:template name="abbreviate-to-capitals">
    <!-- String to abbreviate. -->
    <xsl:param name="string"></xsl:param>

    <xsl:value-of select="translate($string, translate($string, concat($uppercase,'-'), ''), '')"></xsl:value-of>
  </xsl:template>

  <!-- Counts the number of contributors in a contributors element. -->
  <xsl:template name="count-contributors">
    <!-- A set containing either a b:Corporate or a b:NameList element. -->
    <xsl:param name="contributors"></xsl:param>

    <xsl:choose>
      <!-- b:Corporate contributor. -->
      <xsl:when test="string-length($contributors/b:Corporate) &gt; 0">
        <xsl:text>1</xsl:text>
      </xsl:when>
      <!-- b:NameList contributor(s). -->
      <xsl:when test="string-length($contributors/b:NameList) &gt; 0">
        <xsl:value-of select="count($contributors/b:NameList/b:Person)"></xsl:value-of>
      </xsl:when>
      <!-- Empty element. -->
      <xsl:otherwise>
        <xsl:text>0</xsl:text>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>



  <!-- Formats an URL. -->
  <xsl:template name="format-url">
    <!-- URL to format. -->
    <xsl:param name="url"></xsl:param>
    <!-- Formatting options. Currently only 'l' for link is supported. -->
    <xsl:param name="options"></xsl:param>

    <xsl:if test="string-length($url) &gt; 0">
      <!-- Open tag. -->
      <xsl:if test="$options = 'l'">
        <xsl:text>&lt;a href="</xsl:text>
        <xsl:value-of select="$url"></xsl:value-of>
        <xsl:text>"&gt;</xsl:text>
      </xsl:if>

      <!-- Hack in case <URL> is requested and not as link. -->
      <xsl:if test="$options != 'l'">
        <xsl:text>&lt;span/&gt;</xsl:text>
      </xsl:if>

      <!-- Display URL. -->
      <xsl:value-of select="$url"></xsl:value-of>

      <!-- Close tag. -->
      <xsl:if test="$options = 'l'">
        <xsl:text>&lt;/a&gt;</xsl:text>
      </xsl:if>
    </xsl:if>

  </xsl:template>

  <!-- Formats a year. -->
  <xsl:template name="format-year">
    <!-- A year to format. -->
    <xsl:param name="year"></xsl:param>
    <!-- Options for year formatting. -->
    <xsl:param name="options"></xsl:param>

    <xsl:choose>
      <xsl:when test="$options = 's'">
        <xsl:value-of select="substring($year, 2, 2)"></xsl:value-of>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="$year"></xsl:value-of>
      </xsl:otherwise>
    </xsl:choose>

  </xsl:template>

  <!-- Formats a page or a range of pages. -->
  <xsl:template name="format-pages">
    <!-- A single page number or a range of page numbers. -->
    <xsl:param name="pages"></xsl:param>
    <!-- Options (single page prefix:multi page prefix:extra options). -->
    <xsl:param name="options" select="'p. :pp. '"></xsl:param>

    <!-- Retrieve the single page prefix. -->
    <xsl:variable name="singlePagePrefix">
      <xsl:call-template name="substring-before-ex">
        <xsl:with-param name="string" select="$options"></xsl:with-param>
        <xsl:with-param name="delimeter" select="':'"></xsl:with-param>
      </xsl:call-template>
    </xsl:variable>

    <!-- Retrieve the multi page prefix. -->
    <xsl:variable name="multiPagePrefix">
      <xsl:call-template name="substring-before-ex">
        <xsl:with-param name="string" select="substring-after($options, ':')"></xsl:with-param>
        <xsl:with-param name="delimeter" select="':'"></xsl:with-param>
      </xsl:call-template>
    </xsl:variable>

    <!-- Retrieve the remaining options. -->
    <xsl:variable name="extraOptions" select="substring-after(substring-after($options, ':'), ':')"></xsl:variable>

    <xsl:if test="string-length($pages) &gt; 0">
      <!-- Check if this is about a single page, or a range of them to get the correct prefix. -->
      <xsl:choose>
        <!-- Contains multiple pages but no consecutive ones. -->
        <xsl:when test="contains($pages, ',')">
          <xsl:value-of select="$multiPagePrefix"></xsl:value-of>
          <xsl:value-of select="$pages"></xsl:value-of>
        </xsl:when>
        <!-- Single page. -->
        <xsl:when test="not(contains($pages, '-'))">
          <xsl:value-of select="$singlePagePrefix"></xsl:value-of>
          <xsl:value-of select="$pages"></xsl:value-of>
        </xsl:when>
        <!-- Contains multiple consecutive pages which needs to be abbreviated. -->
        <xsl:when test="contains($extraOptions, 'a')">
          <xsl:value-of select="$multiPagePrefix"></xsl:value-of>
          <xsl:call-template name="abbreviate-pages">
            <xsl:with-param name="pages" select="$pages"></xsl:with-param>
            <xsl:with-param name="size" select="concat('0', translate($extraOptions, translate($extraOptions, '0123456789', ''), ''))"></xsl:with-param>
          </xsl:call-template>
        </xsl:when>
        <!-- Contains multiple consecutive pages which needs to be extended. -->
        <xsl:when test="contains($extraOptions, 'e')">
          <xsl:value-of select="$multiPagePrefix"></xsl:value-of>
          <xsl:call-template name="extend-pages">
            <xsl:with-param name="pages" select="$pages"></xsl:with-param>
          </xsl:call-template>
        </xsl:when>
        <!-- Contains multiple consecutive pages of which only the first page needs to be displayed. -->
        <xsl:when test="contains($extraOptions, 'f')">
          <xsl:value-of select="$multiPagePrefix"></xsl:value-of>
          <!-- Or singlePagePrefix? -->
          <xsl:call-template name="first-page">
            <xsl:with-param name="pages" select="$pages"></xsl:with-param>
          </xsl:call-template>
        </xsl:when>
        <!-- Multiple pages, no special handling required. -->
        <xsl:otherwise>
          <xsl:value-of select="$multiPagePrefix"></xsl:value-of>
          <xsl:value-of select="$pages"></xsl:value-of>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:if>

  </xsl:template>

  <!-- Abbreviates a range of page numbers. (e.g. 315-317 becomes 315-7) -->
  <xsl:template name="abbreviate-pages">
    <!-- A range of pages with either '-' or ':' as a separator. -->
    <xsl:param name="pages"></xsl:param>
    <!-- Minimum size of the last part. (e.g.: 2 -> 315-317 becomes 315-17) -->
    <xsl:param name="size" select="'0'"></xsl:param>

    <!-- Find the separator. -->
    <xsl:variable name="separator">
      <xsl:choose>
        <xsl:when test="contains($pages, ':')">
          <xsl:text>:</xsl:text>
        </xsl:when>
        <xsl:when test="contains($pages, '-')">
          <xsl:text>-</xsl:text>
        </xsl:when>
      </xsl:choose>
    </xsl:variable>

    <xsl:choose>
      <!-- Only try to abbreviate if there is a separator. -->
      <xsl:when test="string-length($separator) &gt; 0">

        <xsl:call-template name="abbreviate-pages-part-2">
          <xsl:with-param name="firstPage" select="substring-before($pages, $separator)"></xsl:with-param>
          <xsl:with-param name="lastPage" select="substring-after($pages, $separator)"></xsl:with-param>
          <xsl:with-param name="separator" select="$separator"></xsl:with-param>
          <xsl:with-param name="size" select="$size"></xsl:with-param>
        </xsl:call-template>

      </xsl:when>
      <!-- There is no separator, just return everything. -->
      <xsl:otherwise>
        <xsl:value-of select="$pages"></xsl:value-of>
      </xsl:otherwise>
    </xsl:choose>

  </xsl:template>

  <!-- Recursive helper template for abbreviate-pages. -->
  <xsl:template name="abbreviate-pages-part-2">
    <xsl:param name="firstPage"></xsl:param>
    <xsl:param name="lastPage"></xsl:param>
    <xsl:param name="separator" select="'-'"></xsl:param>
    <xsl:param name="position" select="1"></xsl:param>
    <xsl:param name="size"></xsl:param>

    <xsl:choose>
      <xsl:when test="string-length($firstPage) != string-length($lastPage)">
        <!-- If both page numbers do not contain the same amount of numbers, there is no point in continuing. -->
        <!-- Note that this check should only happen once and could be optimized if required. -->
        <xsl:value-of select="$firstPage"></xsl:value-of>
        <xsl:value-of select="$separator"></xsl:value-of>
        <xsl:value-of select="$lastPage"></xsl:value-of>
      </xsl:when>
      <xsl:when test="substring($firstPage, $position, 1) = substring($lastPage, $position, 1) and string-length(substring($lastPage, $position)) &gt; $size">
        <!-- Recursive repeat until the first non-matching number is found or the remainder gets too short. -->
        <xsl:call-template name="abbreviate-pages-part-2">
          <xsl:with-param name="firstPage" select="$firstPage"></xsl:with-param>
          <xsl:with-param name="lastPage" select="$lastPage"></xsl:with-param>
          <xsl:with-param name="separator" select="$separator"></xsl:with-param>
          <xsl:with-param name="position" select="$position + 1"></xsl:with-param>
          <xsl:with-param name="size" select="$size"></xsl:with-param>
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
        <!-- The shortest version was found, display it. -->
        <xsl:value-of select="$firstPage"></xsl:value-of>
        <xsl:value-of select="$separator"></xsl:value-of>
        <xsl:value-of select="substring($lastPage, $position)"></xsl:value-of>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- Extends a range of page numbers. (e.g. 315-7 becomes 315-317). -->
  <xsl:template name="extend-pages">
    <!-- A range of pages with either '-' or ':' as a separator. -->
    <xsl:param name="pages"></xsl:param>

    <!-- Find the separator. -->
    <xsl:variable name="separator">
      <xsl:choose>
        <xsl:when test="contains($pages, ':')">
          <xsl:text>:</xsl:text>
        </xsl:when>
        <xsl:when test="contains($pages, '-')">
          <xsl:text>-</xsl:text>
        </xsl:when>
      </xsl:choose>
    </xsl:variable>

    <xsl:choose>
      <!-- Only try to extend if there is a separator. -->
      <xsl:when test="string-length($separator) &gt; 0">
        <xsl:variable name="firstPage" select="substring-before($pages, $separator)"></xsl:variable>
        <xsl:variable name="lastPage" select="substring-after($pages, $separator)"></xsl:variable>

        <!-- Display the first page. -->
        <xsl:value-of select="$firstPage"></xsl:value-of>

        <!-- Display the separator. -->
        <xsl:value-of select="$separator"></xsl:value-of>

        <!-- Display leading extension of the last page if available. -->
        <xsl:if test="string-length($firstPage) &gt; string-length($lastPage)">
          <xsl:value-of select="substring($firstPage, 1, string-length($firstPage) - string-length($lastPage))"></xsl:value-of>
        </xsl:if>

        <!-- Display the last page. -->
        <xsl:value-of select="$lastPage"></xsl:value-of>
      </xsl:when>
      <!-- There is no separator, just return everything. -->
      <xsl:otherwise>
        <xsl:value-of select="$pages"></xsl:value-of>
      </xsl:otherwise>
    </xsl:choose>

  </xsl:template>

  <!-- Gets the first page of a range of page numbers. (e.g. 315-317 becomes 315) -->
  <xsl:template name="first-page">
    <!-- A range of pages. -->
    <xsl:param name="pages"></xsl:param>
    <!-- A possible separator (if empty, ':' or '-' will be used. -->
    <xsl:param name="separator"></xsl:param>

    <xsl:choose>
      <xsl:when test="string-length($separator) &gt; 0">
        <xsl:value-of select="substring-before($pages, $separator)"></xsl:value-of>
      </xsl:when>
      <xsl:when test="contains($pages, ':')">
        <xsl:value-of select="substring-before($pages, ':')"></xsl:value-of>
      </xsl:when>
      <xsl:when test="contains($pages, '-')">
        <xsl:value-of select="substring-before($pages, '-')"></xsl:value-of>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="$pages"></xsl:value-of>
      </xsl:otherwise>
    </xsl:choose>

  </xsl:template>

  <!-- Format a number. -->
  <xsl:template name="format-number">
    <!-- Number to format. -->
    <xsl:param name="number"></xsl:param>
    <!-- Formatting options. (r: lower roman numerals, R: upper roman numerals) -->
    <xsl:param name="options" select="''"></xsl:param>

    <xsl:choose>
      <xsl:when test="contains($options, 'r')">
        <xsl:number value="$number" format="i"></xsl:number>
      </xsl:when>
      <xsl:when test="contains($options, 'R')">
        <xsl:number value="$number" format="I"></xsl:number>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="$number"></xsl:value-of>
      </xsl:otherwise>
    </xsl:choose>

  </xsl:template>

  <!-- Format ordinal. -->
  <xsl:template name="format-ordinal">
    <!-- A number to convert to an ordinal. -->
    <xsl:param name="number"></xsl:param>
    <!-- Options. -->
    <xsl:param name="options"></xsl:param>

    <!-- Translate the number to digits only. -->
    <xsl:variable name="digitsOnly">
      <xsl:value-of select="translate($number, translate($number, '0123456789', ''), '')"></xsl:value-of>
    </xsl:variable>

    <!-- Try to represent the input as a number. -->
    <xsl:variable name="asNumber">
      <xsl:choose>
        <!-- Use the available digits. -->
        <xsl:when test="string-length($digitsOnly) &gt; 0">
          <xsl:value-of select="$digitsOnly"></xsl:value-of>
        </xsl:when>
        <!-- Otherwise try to convert the number variable to a set of digits. -->
        <xsl:otherwise>
          <!-- Translate the ordinal into lower cases only. -->
          <xsl:variable name="num">
            <xsl:call-template name="lower-case">
              <xsl:with-param name="string" select="$number"></xsl:with-param>
            </xsl:call-template>
          </xsl:variable>

          <xsl:choose>
            <xsl:when test="$num = 'first'">
              <xsl:text>1</xsl:text>
            </xsl:when>
            <xsl:when test="$num = 'second'">
              <xsl:text>2</xsl:text>
            </xsl:when>
            <xsl:when test="$num = 'third'">
              <xsl:text>3</xsl:text>
            </xsl:when>
            <xsl:when test="$num = 'fourth'">
              <xsl:text>4</xsl:text>
            </xsl:when>
            <xsl:when test="$num = 'fifth'">
              <xsl:text>5</xsl:text>
            </xsl:when>
            <xsl:when test="$num = 'sixth'">
              <xsl:text>6</xsl:text>
            </xsl:when>
            <xsl:when test="$num = 'seventh'">
              <xsl:text>7</xsl:text>
            </xsl:when>
            <xsl:when test="$num = 'eighth'">
              <xsl:text>8</xsl:text>
            </xsl:when>
            <xsl:when test="$num = 'nineth'">
              <xsl:text>9</xsl:text>
            </xsl:when>
            <xsl:when test="$num = 'tenth'">
              <xsl:text>10</xsl:text>
            </xsl:when>
          </xsl:choose>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>

    <xsl:choose>
      <!-- If a number is available, format it. -->
      <xsl:when test="string-length($asNumber) &gt; 0">
        <!-- Display the number. -->
        <xsl:call-template name="format-number">
          <xsl:with-param name="number" select="$asNumber"></xsl:with-param>
          <xsl:with-param name="options" select="translate($options, translate($options, 'R', ''), '')"></xsl:with-param>
        </xsl:call-template>

        <!-- Display the suffix. -->
        <xsl:call-template name="format-ordinal-suffix">
          <xsl:with-param name="number" select="$asNumber"></xsl:with-param>
          <xsl:with-param name="options" select="$options"></xsl:with-param>
        </xsl:call-template>
      </xsl:when>
      <!-- Otherwise just display the input again. -->
      <xsl:otherwise>
        <xsl:value-of select="$number"></xsl:value-of>
      </xsl:otherwise>
    </xsl:choose>

  </xsl:template>

  <!-- Formats the suffix of an ordinal. -->
  <xsl:template name="format-ordinal-suffix">
    <!-- Number for which the ordinal suffix has to be retrieved. -->
    <xsl:param name="number"></xsl:param>
    <!-- Formatting options. Currently only 's' is supported for printing the ordinal part in superscript. -->
    <xsl:param name="options"></xsl:param>

    <!-- Only execute this routine if there is a number. -->
    <xsl:if test="string-length($number) &gt; 0">

      <!-- Retrieve the suffix. -->
      <xsl:variable name="suffix">
        <xsl:choose>
          <xsl:when test="$number mod 100 = 11">th</xsl:when>
          <xsl:when test="$number mod 100 = 12">th</xsl:when>
          <xsl:when test="$number mod 100 = 13">th</xsl:when>
          <xsl:when test="$number mod 10 = 3">rd</xsl:when>
          <xsl:when test="$number mod 10 = 2">nd</xsl:when>
          <xsl:when test="$number mod 10 = 1">st</xsl:when>
          <xsl:otherwise>th</xsl:otherwise>
        </xsl:choose>
      </xsl:variable>

      <!-- Format and display the suffix. -->
      <xsl:choose>
        <!-- Put the suffix in superscript. -->
        <xsl:when test="contains($options, 's')">
          <xsl:text>&lt;span style='vertical-align: super;'&gt;</xsl:text>
          <xsl:value-of select="$suffix"></xsl:value-of>
          <xsl:text>&lt;/span&gt;</xsl:text>
        </xsl:when>
        <!-- No special formatting required. -->
        <xsl:otherwise>
          <xsl:value-of select="$suffix"></xsl:value-of>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:if>

  </xsl:template>

  <!-- Format month. -->
  <xsl:template name="format-month">
    <!-- Representation of a month. -->
    <xsl:param name="month"></xsl:param>
    <!-- Formatting options. (s: use predefined string, i: use roman numeral, u: upper-case, l: lower-case). -->
    <xsl:param name="options"></xsl:param>

    <!-- Get the text to display. -->
    <xsl:variable name="temp1">
      <xsl:variable name="value" select="msxsl:node-set($data)/strings/months/month[@number = number($month)]"></xsl:variable>

      <xsl:choose>
        <xsl:when test="string-length($value) &gt; 0 and contains($options, 's')">
          <xsl:value-of select="$value"></xsl:value-of>
        </xsl:when>
        <xsl:when test="number($month) &gt; 0 and 12 &gt; number($month) and contains($options, 'R')">
          <xsl:number value="number($month)" format="i"></xsl:number>
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="$month"></xsl:value-of>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>

    <!-- Adjust the case. -->
    <xsl:choose>
      <xsl:when test="contains($options, 'u')">
        <xsl:call-template name="upper-case">
          <xsl:with-param name="string" select="$temp1"></xsl:with-param>
        </xsl:call-template>
      </xsl:when>
      <xsl:when test="contains($options, 'l')">
        <xsl:call-template name="lower-case">
          <xsl:with-param name="string" select="$temp1"></xsl:with-param>
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="$temp1"></xsl:value-of>
      </xsl:otherwise>
    </xsl:choose>

  </xsl:template>

  <!-- Format day. -->
  <xsl:template name="format-day">
    <!-- Day. -->
    <xsl:param name="day"></xsl:param>
    <!-- Formatting options (o: ordinal, u: upper-case, l:lower-case, n: two digits). -->
    <xsl:param name="options"></xsl:param>

    <!-- Check if the number should always be presented by 2 digits. -->
    <xsl:variable name="temp1">
      <xsl:choose>
        <xsl:when test="contains($options, 'n') and 2 &gt; string-length($day) ">
          <xsl:value-of select="concat('0', $day)"></xsl:value-of>
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="$day"></xsl:value-of>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>

    <!-- Check if the number should be an ordinal. -->
    <xsl:variable name="temp2">
      <xsl:choose>
        <xsl:when test="contains($options, 'o')">
          <xsl:call-template name="format-ordinal">
            <xsl:with-param name="number" select="$temp1"></xsl:with-param>
            <xsl:with-param name="options" select="translate($options, 's', 's')"></xsl:with-param>
          </xsl:call-template>
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="$temp1"></xsl:value-of>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>

    <!-- Check if the number should be in uppercase or lowercase (only useful when represented as an ordinal). -->
    <xsl:variable name="temp3">
      <xsl:choose>
        <xsl:when test="contains($options, 'u')">
          <xsl:call-template name="upper-case">
            <xsl:with-param name="string" select="$temp2"></xsl:with-param>
          </xsl:call-template>
        </xsl:when>
        <xsl:when test="contains($options, 'l')">
          <xsl:call-template name="lower-case">
            <xsl:with-param name="string" select="$temp2"></xsl:with-param>
          </xsl:call-template>
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="$temp2"></xsl:value-of>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>

    <xsl:value-of select="$temp3"></xsl:value-of>

  </xsl:template>

  <!-- Formats a given title. -->
  <!--   Note: in case the subtitle (s option) is requested, and there is none, the result will be empty. -->
  <xsl:template name="format-title">
    <!-- Title string. -->
    <xsl:param name="title"></xsl:param>
    <!-- Delimeter between a title and its subtitle. By default, this is ':'. -->
    <xsl:param name="delimeter" select="':'"></xsl:param>
    <!-- Leading articles which can be ignored when the titles get sorted. -->
    <xsl:param name="articles" select="'-A-AN-THE-'"></xsl:param>
    <!-- Options string. (u = uppercase, l = lowercase, a = put xxxwords at the end, m = main title, s = subtitle, f = first word uppercase) -->
    <xsl:param name="options"></xsl:param>

    <!-- Select the requested title part (main, sub, or full). -->
    <xsl:variable name="part">
      <xsl:choose>
        <!-- Main title part (or full title if there is no subtitle).-->
        <xsl:when test="contains($options, 'm')">

          <xsl:variable name="temp">
            <xsl:call-template name="substring-before-ex">
              <xsl:with-param name="string" select="$title"></xsl:with-param>
              <xsl:with-param name="delimeter" select="$delimeter"></xsl:with-param>
            </xsl:call-template>
          </xsl:variable>

          <xsl:value-of select="normalize-space($temp)"></xsl:value-of>
        </xsl:when>
        <!-- Subtitle. Can be empty if there is none. -->
        <xsl:when test="contains($options, 's')">
          <xsl:value-of select="normalize-space(substring-after($title, $delimeter))"></xsl:value-of>
        </xsl:when>
        <!-- Full title. -->
        <xsl:otherwise>
          <xsl:value-of select="$title"></xsl:value-of>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>

    <!-- If necessary, transform the title part to work for sorting. -->
    <xsl:variable name="sort">
      <xsl:choose>
        <xsl:when test="contains($options, 'a')">
          <!-- Get the first word. -->
          <xsl:variable name="temp1">
            <xsl:call-template name="substring-before-ex">
              <xsl:with-param name="string" select="$title"></xsl:with-param>
              <xsl:with-param name="delimeter" select="$delimeter"></xsl:with-param>
            </xsl:call-template>
          </xsl:variable>

          <!-- Capitalize it and surround it by dashes. -->
          <xsl:variable name="temp2">
            <xsl:text>-</xsl:text>
            <xsl:call-template name="upper-case">
              <xsl:with-param name="string" select="normalize-space($temp1)"></xsl:with-param>
            </xsl:call-template>
            <xsl:text>-</xsl:text>
          </xsl:variable>

          <!-- Capitalize the possible start words to put at the end. -->
          <xsl:variable name="firstWords">
            <xsl:call-template name="upper-case">
              <xsl:with-param name="string" select="$articles"></xsl:with-param>
            </xsl:call-template>
          </xsl:variable>

          <!-- Check if it is used. -->
          <xsl:choose>
            <xsl:when test="contains($firstWords, $temp2)">
              <xsl:value-of select="substring-after($part, ' ')"></xsl:value-of>
              <xsl:text>, </xsl:text>
              <xsl:value-of select="normalize-space($temp1)"></xsl:value-of>
            </xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="$part"></xsl:value-of>
            </xsl:otherwise>
          </xsl:choose>

        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="$part"></xsl:value-of>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>

    <!-- Apply the correct casing to the requested title part. -->
    <xsl:variable name="casing">
      <xsl:choose>
        <!-- Entire title in upper case. -->
        <xsl:when test="contains($options, 'u')">
          <xsl:call-template name="upper-case">
            <xsl:with-param name="string" select="$sort"></xsl:with-param>
          </xsl:call-template>
        </xsl:when>
        <!-- Entire title in lower case. -->
        <xsl:when test="contains($options, 'l')">
          <xsl:call-template name="lower-case">
            <xsl:with-param name="string" select="$sort"></xsl:with-param>
          </xsl:call-template>
        </xsl:when>
        <!-- The first word in upper case. -->
        <xsl:when test="contains($options, 'f')">
          <!-- First word. -->
          <xsl:call-template name="upper-case">
            <xsl:with-param name="string">
              <!-- Get the first word (even if there is only one word.) -->
              <xsl:call-template name="substring-before-ex">
                <xsl:with-param name="string" select="$sort"></xsl:with-param>
                <xsl:with-param name="delimeter" select="' '"></xsl:with-param>
              </xsl:call-template>
            </xsl:with-param>
          </xsl:call-template>
          <!-- Space. -->
          <xsl:text> </xsl:text>
          <!-- Other words. -->
          <xsl:value-of select="substring-after($part, ' ')"></xsl:value-of>
        </xsl:when>
        <!-- Do not adjust casing. -->
        <xsl:otherwise>
          <xsl:value-of select="$sort"></xsl:value-of>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>

    <!-- Return the result. -->
    <xsl:value-of select="$casing"></xsl:value-of>

  </xsl:template>

  <!-- Cleans up a strings punctuation (part 1). -->
  <xsl:template name="clean-punctuation">
    <!-- String to clean up. -->
    <xsl:param name="string"></xsl:param>

    <!-- First part of the cleaning functionality, used to remove leading punctuation. -->

    <xsl:if test="string-length($string) &gt; 0">
      <xsl:choose>
        <!-- Handle leading punctuation. -->
        <xsl:when test="contains('!?.,;: ', substring($string, 1, 1))">
          <xsl:call-template name="clean-punctuation">
            <xsl:with-param name="string" select="substring($string, 2)"></xsl:with-param>
          </xsl:call-template>
        </xsl:when>
        <!-- Handle tags. -->
        <xsl:when test="substring($string, 1, 1) = '&lt;'">
          <xsl:value-of select="substring-before($string, '&gt;')"></xsl:value-of>
          <xsl:value-of select="'&gt;'"></xsl:value-of>
          <xsl:call-template name="clean-punctuation">
            <xsl:with-param name="string" select="substring-after($string, '&gt;')"></xsl:with-param>
          </xsl:call-template>
        </xsl:when>
        <xsl:otherwise>
          <!-- Handle non-leading punctuation issues. -->
          <xsl:call-template name="clean-punctuation-2">
            <xsl:with-param name="string" select="$string"></xsl:with-param>
          </xsl:call-template>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:if>

  </xsl:template>

  <!-- Cleans up a strings punctuation (part 2). -->
  <xsl:template name="clean-punctuation-2">
    <!-- String to clean up. -->
    <xsl:param name="string"></xsl:param>
    <!-- Previous punctuation character (empty means previous character wasn't a punctuation one). -->
    <xsl:param name="punctuation" select="''"></xsl:param>
    <!-- Buffer with tags. -->
    <xsl:param name="tagbuffer" select="''"></xsl:param>

    <!-- Second part of the cleaning functionality, used to solve any non-leading punctuation. -->

    <xsl:choose>
      <xsl:when test="string-length($string) &gt; 0">
        <xsl:choose>
          <!-- Handle punctuation. -->
          <xsl:when test="contains('!?.,;: ', substring($string, 1, 1))">
            <xsl:choose>
              <!-- If there was previous punctuation, handle possible cleaning. -->
              <xsl:when test="$punctuation != ''">
                <xsl:choose>
                  <!-- When the last two punctuations are equal, get rid of one. -->
                  <xsl:when test="$punctuation = substring($string, 1, 1)">
                    <xsl:call-template name="clean-punctuation-2">
                      <xsl:with-param name="string" select="substring($string, 2)"></xsl:with-param>
                      <xsl:with-param name="punctuation" select="$punctuation"></xsl:with-param>
                      <xsl:with-param name="tagbuffer" select="$tagbuffer"></xsl:with-param>
                    </xsl:call-template>
                  </xsl:when>
                  <!-- Handle punctuations followed by a period. -->
                  <xsl:when test="contains(' ,;:.', $punctuation) and substring($string, 1, 1) = '.'">
                    <xsl:value-of select="$tagbuffer"></xsl:value-of>
                    <xsl:call-template name="clean-punctuation-2">
                      <xsl:with-param name="string" select="substring($string, 2)"></xsl:with-param>
                      <xsl:with-param name="punctuation" select="'.'"></xsl:with-param>
                    </xsl:call-template>
                  </xsl:when>
                  <!-- Handle punctuations with question marks and exclamation marks. -->
                  <xsl:when test="contains('!?', $punctuation) and contains('!?.', substring($string, 1, 1))">
                    <xsl:value-of select="$punctuation"></xsl:value-of>
                    <xsl:value-of select="$tagbuffer"></xsl:value-of>
                    <xsl:call-template name="clean-punctuation-2">
                      <xsl:with-param name="string" select="substring($string, 2)"></xsl:with-param>
                    </xsl:call-template>
                  </xsl:when>
                  <!-- Non supported punctuation handling. Just display the result. -->
                  <xsl:otherwise>
                    <xsl:value-of select="$punctuation"></xsl:value-of>
                    <xsl:value-of select="$tagbuffer"></xsl:value-of>
                    <xsl:call-template name="clean-punctuation-2">
                      <xsl:with-param name="string" select="substring($string, 2)"></xsl:with-param>
                      <xsl:with-param name="punctuation" select="substring($string, 1, 1)"></xsl:with-param>
                    </xsl:call-template>
                  </xsl:otherwise>
                </xsl:choose>
              </xsl:when>
              <!-- Otherwise, there was no previous punctuation. -->
              <xsl:otherwise>
                <xsl:value-of select="$tagbuffer"></xsl:value-of>
                <xsl:call-template name="clean-punctuation-2">
                  <xsl:with-param name="string" select="substring($string, 2)"></xsl:with-param>
                  <xsl:with-param name="punctuation" select="substring($string, 1, 1)"></xsl:with-param>
                </xsl:call-template>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:when>
          <!-- Handle tags. -->
          <xsl:when test="substring($string, 1, 1) = '&lt;'">
            <xsl:call-template name="clean-punctuation-2">
              <xsl:with-param name="string" select="substring-after($string, '&gt;')"></xsl:with-param>
              <xsl:with-param name="punctuation" select="$punctuation"></xsl:with-param>
              <xsl:with-param name="tagbuffer" select="concat($tagbuffer, substring-before($string, '&gt;'), '&gt;')"></xsl:with-param>
            </xsl:call-template>
          </xsl:when>
          <!-- Handle quotes. -->
          <xsl:when test="substring($string, 1, 1) = '&quot;'">
            <xsl:call-template name="clean-punctuation-2">
              <xsl:with-param name="string" select="substring($string, 2)"></xsl:with-param>
              <xsl:with-param name="punctuation" select="$punctuation"></xsl:with-param>
              <xsl:with-param name="tagbuffer" select="concat($tagbuffer, '&quot;')"></xsl:with-param>
            </xsl:call-template>
          </xsl:when>
          <!-- Handle remainder of the string. -->
          <xsl:otherwise>
            <xsl:value-of select="$punctuation"></xsl:value-of>
            <xsl:value-of select="$tagbuffer"></xsl:value-of>
            <xsl:value-of select="substring($string, 1, 1)"></xsl:value-of>
            <xsl:call-template name="clean-punctuation-2">
              <xsl:with-param name="string" select="substring($string, 2)"></xsl:with-param>
            </xsl:call-template>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:when>
      <!-- End of the cleaning operation. -->
      <xsl:otherwise>
        <xsl:value-of select="$punctuation"></xsl:value-of>
        <xsl:value-of select="$tagbuffer"></xsl:value-of>
      </xsl:otherwise>
    </xsl:choose>

  </xsl:template>


  <!-- The set of lower case characters used to do case conversions. -->
  <xsl:variable name="lowercase" select="'abcdefghijklmnopqrstuvwxyzàáâãäåæçèéêëìíîïñòóôõöùúûü'"></xsl:variable>

  <!-- The set of upper case characters used to do case conversions. -->
  <xsl:variable name="uppercase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÑÒÓÔÕÖÙÚÛÜ'"></xsl:variable>

  <!-- The set of punctuation characters used as word delimeters in a string. -->
  <xsl:variable name="punctuation" select="'	&#xD;  .,:;!?&quot;‘’‚“”„«»()[]&lt;&gt;{}'"></xsl:variable>

  <!-- Converts a string to upper case characters only. -->
  <xsl:template name="upper-case">
    <!-- String with characters to convert. -->
    <xsl:param name="string"></xsl:param>

    <!-- 
         Word 2007 does not handle text-transform when importing html. 
         A text-transform element set to uppercase works but it is not
         supported.
      -->

    <xsl:value-of select="translate($string, $lowercase, $uppercase)"></xsl:value-of>
  </xsl:template>

  <!-- Converts a string to lower case characters only. -->
  <xsl:template name="lower-case">
    <!-- String with characters to convert. -->
    <xsl:param name="string"></xsl:param>

    <!-- Word 2007 does not handle text-transform when importing html. -->

    <xsl:value-of select="translate($string, $uppercase, $lowercase)"></xsl:value-of>
  </xsl:template>

  <!-- An extended version of substring-before, returning the entire string if it does not contain the delimiter. -->
  <xsl:template name="substring-before-ex">
    <!-- String to get the substring from. -->
    <xsl:param name="string"></xsl:param>
    <!-- Delimeter to check for. -->
    <xsl:param name="delimeter"></xsl:param>

    <xsl:choose>
      <xsl:when test="contains($string, $delimeter)">
        <xsl:value-of select="substring-before($string, $delimeter)"></xsl:value-of>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="$string"></xsl:value-of>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- Retrieves the substring of a string after the last occurence of a symbol. -->
  <xsl:template name="substring-after-last">
    <!-- String to find the substring in. -->
    <xsl:param name="string"></xsl:param>
    <!-- Separator symbol. -->
    <xsl:param name="symbol"></xsl:param>

    <xsl:choose>
      <!-- If the string contains the symbol... -->
      <xsl:when test="contains($string, $symbol)">
        <!-- .. call the template recursively... -->
        <xsl:call-template name="substring-after-last">
          <!-- ... with the string being the string after the symbol ... -->
          <xsl:with-param name="string" select="substring-after($string, $symbol)"></xsl:with-param>
          <!-- ... and the symbol being the same as before. -->
          <xsl:with-param name="symbol" select="$symbol"></xsl:with-param>
        </xsl:call-template>
      </xsl:when>
      <!-- Otherwise, return the value of the string. -->
      <xsl:otherwise>
        <xsl:value-of select="$string"></xsl:value-of>
      </xsl:otherwise>
    </xsl:choose>

  </xsl:template>

  <!-- Retrieves the substring of a string before the last occurence of a symbol. -->
  <xsl:template name="substring-before-last">
    <!-- String to find the substring in. -->
    <xsl:param name="string"></xsl:param>
    <!-- Separator symbol. -->
    <xsl:param name="symbol"></xsl:param>

    <!-- If the string contains the symbol ... -->
    <xsl:if test="contains($string, $symbol)">
      <!-- Get the part before the symbol. -->
      <xsl:copy-of select="substring-before($string, $symbol)"></xsl:copy-of>

      <xsl:variable name="temp" select="substring-after($string, $symbol)"></xsl:variable>

      <!-- If the symbol occurs another time in the string ... -->
      <xsl:if test="contains($temp, $symbol)">
        <!-- ... display the symbol ... -->
        <xsl:copy-of select="$symbol"></xsl:copy-of>

        <!-- ... and call the function recursively. -->
        <xsl:call-template name="substring-before-last">
          <xsl:with-param name="string" select="$temp"></xsl:with-param>
          <xsl:with-param name="symbol" select="$symbol"></xsl:with-param>
        </xsl:call-template>
      </xsl:if>
    </xsl:if>

  </xsl:template>

  <!-- BibWord extensions. -->
  <xsl:template name="bibword-extensions">

    <!-- Extends the b:Source elements to apply the BibWord extensions. -->
    <xsl:variable name="extended">

      <!-- Create a b:BibWord element. -->
      <b:BibWord>
        <!-- Extend all the b:Source elements with a sortkey. -->
        <xsl:for-each select="/b:BibWord/b:Source">
          <b:Source>
            <!-- Copy all elements with the exception of any previously defined BibOrder or YearSuffix. -->
            <xsl:for-each select="./*">
              <xsl:if test="local-name() != 'BibOrder' and local-name() != 'YearSuffix'">
                <xsl:copy-of select="."></xsl:copy-of>
              </xsl:if>
            </xsl:for-each>

            <xsl:variable name="t1" select="./b:Type"></xsl:variable>
            <xsl:variable name="t2" select="./b:SourceType"></xsl:variable>

            <!-- Add a sorting key. -->
            <b:SortKey>
              <xsl:variable name="skey">
                <xsl:choose>
                  <!-- First try type. -->
                  <xsl:when test="string-length(msxsl:node-set($data)/bibliography/source[@type = $t1]/sortkey) &gt; 0">
                    <xsl:call-template name="format-source">
                      <xsl:with-param name="format" select="msxsl:node-set($data)/bibliography/source[@type = $t1]/sortkey"></xsl:with-param>
                      <xsl:with-param name="source" select="."></xsl:with-param>
                    </xsl:call-template>
                  </xsl:when>
                  <!-- Then try source type. -->
                  <xsl:when test="string-length(msxsl:node-set($data)/bibliography/source[@type = $t2]/sortkey) &gt; 0">
                    <xsl:call-template name="format-source">
                      <xsl:with-param name="format" select="msxsl:node-set($data)/bibliography/source[@type = $t2]/sortkey"></xsl:with-param>
                      <xsl:with-param name="source" select="."></xsl:with-param>
                    </xsl:call-template>
                  </xsl:when>
                  <!-- Finally just use reference order. -->
                  <xsl:otherwise>
                    <xsl:value-of select="substring(concat('00000', ./b:RefOrder), string-length(./b:RefOrder) + 1, 5)"></xsl:value-of>
                  </xsl:otherwise>
                </xsl:choose>
              </xsl:variable>

              <!-- The only reason to put this in a separate step is to do 'disable-output-escaping'. -->
              <xsl:call-template name="upper-case">
                <xsl:with-param name="string">
                  <xsl:value-of select="$skey" disable-output-escaping="yes"></xsl:value-of>
                </xsl:with-param>
              </xsl:call-template>

            </b:SortKey>

            <!-- Add year suffix requirements. -->
            <b:YSReq>

              <xsl:variable name="key">
                <xsl:choose>
                  <!-- First try type. -->
                  <xsl:when test="string-length(msxsl:node-set($data)/extensions/source[@type = $t1]/yearsuffix) &gt; 0">
                    <xsl:call-template name="format-source">
                      <xsl:with-param name="format" select="msxsl:node-set($data)/extensions/source[@type = $t1]/yearsuffix"></xsl:with-param>
                      <xsl:with-param name="source" select="."></xsl:with-param>
                    </xsl:call-template>
                  </xsl:when>
                  <!-- Then try source type. -->
                  <xsl:when test="string-length(msxsl:node-set($data)/extensions/source[@type = $t2]/yearsuffix) &gt; 0">
                    <xsl:call-template name="format-source">
                      <xsl:with-param name="format" select="msxsl:node-set($data)/extensions/source[@type = $t2]/yearsuffix"></xsl:with-param>
                      <xsl:with-param name="source" select="."></xsl:with-param>
                    </xsl:call-template>
                  </xsl:when>
                  <!-- Finally just use reference order. -->
                  <xsl:otherwise>
                    <xsl:value-of select="substring(concat('00000', ./b:RefOrder), string-length(./b:RefOrder) + 1, 5)"></xsl:value-of>
                  </xsl:otherwise>
                </xsl:choose>
              </xsl:variable>

              <!-- The only reason to put this in a separate step is to do 'disable-output-escaping'. -->
              <xsl:call-template name="upper-case">
                <xsl:with-param name="string">
                  <xsl:value-of select="$key" disable-output-escaping="yes"></xsl:value-of>
                </xsl:with-param>
              </xsl:call-template>
            </b:YSReq>

          </b:Source>
        </xsl:for-each>
      </b:BibWord>

    </xsl:variable>

    <!-- Sort the elements for BibOrder. -->
    <xsl:variable name="sortedForBibOrder">
      <b:BibWord xmlns:b="http://schemas.openxmlformats.org/officeDocument/2006/bibliography">
        <xsl:for-each select="msxsl:node-set($extended)/b:BibWord/b:Source">
          <xsl:sort select="b:SortKey" data-type="text"></xsl:sort>

          <b:Source>
            <!-- Copy all elements. -->
            <xsl:for-each select="./*">
              <xsl:copy-of select="."></xsl:copy-of>
            </xsl:for-each>
          </b:Source>

        </xsl:for-each>
      </b:BibWord>
    </xsl:variable>

    <!-- Add the BibOrder element. -->
    <xsl:variable name="withBibOrder">
      <b:BibWord xmlns:b="http://schemas.openxmlformats.org/officeDocument/2006/bibliography">
        <xsl:for-each select="msxsl:node-set($sortedForBibOrder)/b:BibWord/b:Source">
          <b:Source>
            <!-- Copy all elements. -->
            <xsl:for-each select="./*">
              <xsl:copy-of select="."></xsl:copy-of>
            </xsl:for-each>

            <!-- Add the BibOrder element. -->
            <b:BibOrder>
              <xsl:value-of select="position()"></xsl:value-of>
            </b:BibOrder>
          </b:Source>
        </xsl:for-each>
      </b:BibWord>
    </xsl:variable>

    <!-- Sort the elements for YearSuffix. -->
    <xsl:variable name="sortedForYearSuffix">
      <b:BibWord xmlns:b="http://schemas.openxmlformats.org/officeDocument/2006/bibliography">
        <xsl:for-each select="msxsl:node-set($withBibOrder)/b:BibWord/b:Source">
          <!-- Sort by YSReq first to group entries which might require year suffices. -->
          <xsl:sort select="b:YSReq" data-type="text"></xsl:sort>
          <xsl:sort select="b:SortKey" data-type="text"></xsl:sort>

          <b:Source>
            <!-- Copy all elements. -->
            <xsl:for-each select="./*">
              <xsl:copy-of select="."></xsl:copy-of>
            </xsl:for-each>
          </b:Source>
        </xsl:for-each>
      </b:BibWord>
    </xsl:variable>

    <!-- Add the YearSuffix element. -->
    <b:BibWord xmlns:b="http://schemas.openxmlformats.org/officeDocument/2006/bibliography">
      <xsl:for-each select="msxsl:node-set($sortedForYearSuffix)/b:BibWord/b:Source">

        <b:Source>
          <!-- Copy all elements except for YSReq and SortKey. -->
          <xsl:for-each select="./*">
            <xsl:if test="local-name() != 'YSReq' and local-name() != 'SortKey'">
              <xsl:copy-of select="."></xsl:copy-of>
            </xsl:if>
          </xsl:for-each>

          <!-- Add the YearSuffix element. -->
          <b:YearSuffix>
            <xsl:variable name="current" select="./b:YSReq"></xsl:variable>
            <xsl:variable name="previous" select="preceding-sibling::b:Source[1]/b:YSReq"></xsl:variable>
            <xsl:variable name="next" select="following-sibling::b:Source[1]/b:YSReq"></xsl:variable>

            <xsl:choose>
              <!-- Continuation of a series. -->
              <xsl:when test="position() &gt; 1 and $current = $previous">
                <xsl:call-template name="get-year-suffix">
                  <xsl:with-param name="index" select="position()"></xsl:with-param>
                  <xsl:with-param name="bibWord" select="$sortedForYearSuffix"></xsl:with-param>
                </xsl:call-template>
              </xsl:when>
              <!-- First in a series. -->
              <xsl:when test="last() &gt; position() and $current = $next">
                <xsl:text>a</xsl:text>
              </xsl:when>
              <!-- Not part of a series, the element is empty. -->
              <xsl:otherwise>
              </xsl:otherwise>
            </xsl:choose>

          </b:YearSuffix>

        </b:Source>
      </xsl:for-each>
    </b:BibWord>

  </xsl:template>

  <!-- Gets the year suffix for certain elements. -->
  <xsl:template name="get-year-suffix">
    <xsl:param name="suffixIndex" select="1"></xsl:param>
    <xsl:param name="index"></xsl:param>
    <xsl:param name="bibWord"></xsl:param>

    <xsl:choose>
      <xsl:when test="$index - $suffixIndex &gt; 0 and msxsl:node-set($bibWord)/b:BibWord/b:Source[$index]/b:YSReq = msxsl:node-set($bibWord)/b:BibWord/b:Source[$index - $suffixIndex]/b:YSReq">
        <xsl:call-template name="get-year-suffix">
          <xsl:with-param name="suffixIndex" select="$suffixIndex + 1"></xsl:with-param>
          <xsl:with-param name="index" select="$index"></xsl:with-param>
          <xsl:with-param name="bibWord" select="$bibWord"></xsl:with-param>
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="substring('abcdefghijklmnopqrstuvwxyz', $suffixIndex, 1)"></xsl:value-of>
      </xsl:otherwise>
    </xsl:choose>

  </xsl:template>

  <!-- Informative variable indicating which version of BibWord this is. -->
  <xsl:variable name="version">
    <xsl:text>2.5</xsl:text>
  </xsl:variable>
</xsl:stylesheet>