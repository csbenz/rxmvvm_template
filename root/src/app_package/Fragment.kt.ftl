package ${escapeKotlinIdentifiers(packageName)}

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.core.content.ContextCompat
import androidx.lifecycle.ViewModelProvider
import androidx.lifecycle.ViewModelProviders
import com.github.mikephil.charting.charts.LineChart
import com.github.mikephil.charting.data.Entry
import com.github.mikephil.charting.data.LineData
import com.github.mikephil.charting.data.LineDataSet
import com.google.android.material.tabs.TabLayout
import com.jakewharton.rxbinding2.view.clicks
import com.swissborg.android.R
import com.swissborg.android.di.Injectable
import com.swissborg.android.ui.base.BaseFragment
import io.reactivex.android.schedulers.AndroidSchedulers
import io.reactivex.disposables.CompositeDisposable
import java.util.*
import java.util.concurrent.TimeUnit
import javax.inject.Inject

<#if applicationPackage??>
import ${applicationPackage}.R
</#if>

class ${prefix}Fragment : BaseFragment(), Injectable {

    @Inject
    lateinit var viewModelFactory: ViewModelProvider.Factory

    private lateinit var viewModel: ${prefix}ViewModel

    private val disposables = CompositeDisposable()

    companion object {

        fun newInstance(): ${prefix}Fragment = ${prefix}Fragment()
    }

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?,
                              savedInstanceState: Bundle?): View? {

        return inflater.inflate(R.layout.fragment_${prefix}, container, false)
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        viewModel = ViewModelProviders.of(this, viewModelFactory).get(${prefix}ViewModel::class.java)
        setupUI()

    }

    override fun onStart() {
        super.onStart()
        bind()
        bindModel()
    }

    override fun onStop() {
        super.onStop()

        disposables.clear()
    }

    private fun setupUI() {
        // TODO
    }

    override fun screenName(): String? {
        // TODO
    }

    private fun bind() {
        // TODO
    }

    private fun bindModel() {
         // TODO
    }
}